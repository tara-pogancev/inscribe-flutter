import 'package:hive/hive.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';
import 'package:inscribe/core/domain/repositories/notes_repository.dart';
import 'package:inscribe/core/domain/repositories/notifications_repository.dart';

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
  Future<void> deleteNote(Note note) async {
    await notesBox.delete(note.id);
  }

  @override
  Future<List<Note>> getNotes() async {
    // await remindersBox.clear();

    List<Note> notes = [];
    final notesFromBox =
        notesBox.values.map((e) => e.cast<String, dynamic>()).toList();
    for (var note in notesFromBox) {
      final newNote = Note.fromJson(note);
      final reminders = await getRemindersForNote(newNote);
      notes.add(newNote.copyWith(reminders: reminders));
    }
    return notes;
  }

  @override
  Future<void> addNote(Note note) async {
    await notesBox.put(note.id, note.toJson());
    await updateNoteReminders(note.reminders, note);
  }

  @override
  Future<void> updateNote(Note note) async {
    await notesBox.put(note.id, note.toJson());
    await updateNoteReminders(note.reminders, note);
  }

  @override
  Future<void> deleteNoteList(List<Note> notesToDelete) async {
    for (final note in notesToDelete) {
      deleteNote(note);
    }
  }

  @override
  Future<List<NoteReminder>> getRemindersForNote(Note note) async {
    List<NoteReminder> reminders = [];

    final remindersFromBox =
        remindersBox.values.map((e) => e.cast<String, dynamic>()).toList();

    for (var reminderData in remindersFromBox) {
      final reminder = NoteReminder.fromJson(reminderData);
      if (reminder.noteId == note.id) {
        reminders.add(reminder);
      }
    }

    reminders.sort((a, b) =>
        b.date.millisecondsSinceEpoch - a.date.millisecondsSinceEpoch);

    return reminders;
  }

  @override
  Future<void> updateNoteReminders(
      List<NoteReminder> newReminders, Note note) async {
    for (final oldReminder in await getRemindersForNote(note)) {
      deleteReminder(oldReminder);
    }

    for (final reminder in newReminders) {
      reminder.noteId = note.id;
      addReminder(reminder, ignoreSchedulingNotification: note.isDeleted);
    }
  }

  @override
  Future<void> deleteReminder(NoteReminder reminder) async {
    await remindersBox.delete(reminder.id);
    notificationsRepository.deleteScheduledNotification(reminder);
  }

  @override
  Future<void> addReminder(NoteReminder reminder,
      {bool ignoreSchedulingNotification = false}) async {
    await remindersBox.put(reminder.id, reminder.toJson());
    if (!ignoreSchedulingNotification) {
      notificationsRepository.scheduleNotification(reminder);
    }
  }
}
