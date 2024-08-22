import 'package:hive/hive.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';
import 'package:inscribe/core/data/repositories/notes/notes_repository.dart';
import 'package:inscribe/core/data/repositories/notifications/notifications_repository.dart';

const hiveNotesBox = "notes";
const hiveRemindersBox = "reminders";

class NotesRepositoryImpl implements NotesRepository {
  final Box notesBox;
  final Box remindersBox;
  final NotificationsRepository notificationsRepository;

  NotesRepositoryImpl({
    required this.notesBox,
    required this.remindersBox,
    required this.notificationsRepository,
  });

  @override
  void deleteNote(Note note) {
    notesBox.delete(note.id);
    for (final oldReminder in getRemindersForNote(note)) {
      deleteAndCancelReminder(oldReminder);
    }

    notificationsRepository.deleteBirthdayReminder(note);
  }

  @override
  List<Note> getNotes() {
    List<Note> notes = [];
    final notesFromBox =
        notesBox.values.map((e) => e.cast<String, dynamic>()).toList();
    for (var note in notesFromBox) {
      final newNote = Note.fromJson(note);
      final reminders = getRemindersForNote(newNote);
      notes.add(newNote.copyWith(reminders: reminders));
    }
    return notes;
  }

  @override
  void addNote(Note note) {
    notesBox.put(note.id, note.toJson());
    updateNoteReminders(note.reminders, note);
  }

  @override
  void updateNote(Note note) {
    notesBox.put(note.id, note.toJson());
    updateNoteReminders(note.reminders, note);
  }

  @override
  void deleteNoteList(List<Note> notesToDelete) {
    for (final note in notesToDelete) {
      deleteNote(note);
    }
  }

  @override
  List<NoteReminder> getRemindersForNote(Note note) {
    List<NoteReminder> reminders = [];

    final remindersFromBox =
        remindersBox.values.map((e) => e.cast<String, dynamic>()).toList();

    for (var reminderData in remindersFromBox) {
      final reminder = NoteReminder.fromJson(reminderData);
      if (reminder.noteId == note.id &&
          (reminder.isAnual || reminder.date.isAfter(DateTime.now()))) {
        reminders.add(reminder);
      }
    }

    reminders.sort((a, b) =>
        b.date.millisecondsSinceEpoch - a.date.millisecondsSinceEpoch);

    return reminders;
  }

  @override
  void updateNoteReminders(List<NoteReminder> newReminders, Note note) {
    // Delete all previous reminders from reminder box, and cancel them
    for (final oldReminder in getRemindersForNote(note)) {
      deleteAndCancelReminder(oldReminder);
    }

    for (final reminder in newReminders) {
      reminder.noteId = note.id;
      addAndScheduleReminder(reminder,
          ignoreSchedulingNotification: note.isDeleted);
    }

    if (note.dateOfBirth != null) {
      notificationsRepository.createOrUpdateBirthdayReminder(note);
    } else {
      notificationsRepository.deleteBirthdayReminder(note);
    }
  }

  @override
  void deleteAndCancelReminder(NoteReminder reminder) {
    remindersBox.delete(reminder.id);
    notificationsRepository.deleteScheduledNotification(reminder);
  }

  @override
  void addAndScheduleReminder(NoteReminder reminder,
      {bool ignoreSchedulingNotification = false}) {
    remindersBox.put(reminder.id, reminder.toJson());
    if (!ignoreSchedulingNotification) {
      notificationsRepository.scheduleNotification(reminder);
    }
  }

  @override
  Note getNoteById(String noteId) {
    final noteFromBox = notesBox.get(noteId).cast<String, dynamic>();
    final note = Note.fromJson(noteFromBox);
    final reminders = getRemindersForNote(note);

    return note.copyWith(reminders: reminders);
  }

  @override
  List<NoteReminder> getAllReminders() {
    List<NoteReminder> reminders = [];

    final remindersFromBox =
        remindersBox.values.map((e) => e.cast<String, dynamic>()).toList();

    for (var reminderData in remindersFromBox) {
      final reminder = NoteReminder.fromJson(reminderData);
      reminders.add(reminder);
    }

    reminders.sort((a, b) =>
        b.date.millisecondsSinceEpoch - a.date.millisecondsSinceEpoch);

    return reminders;
  }
}
