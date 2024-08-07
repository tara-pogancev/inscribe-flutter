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
    List<Note> notes = [];
    final notesFromBox =
        notesBox.values.map((e) => e.cast<String, dynamic>()).toList();
    for (var note in notesFromBox) {
      final newNote = Note.fromJson(note);
      final reminders = await getRemindersForNote(note);
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
  Future<List<NoteReminder>> getRemindersForNote(note) async {
    List<NoteReminder> reminders = [];

    final remindersFromBox =
        remindersBox.values.map((e) => e.cast<String, dynamic>()).toList();

    for (var reminder in remindersFromBox) {
      if (reminder.noteId == note.id) {
        reminders.add(NoteReminder.fromJson(reminder));
      }
    }

    reminders.sort((a, b) =>
        b.date.millisecondsSinceEpoch - a.date.millisecondsSinceEpoch);

    return reminders;
  }

  @override
  Future<void> updateNoteReminders(
      List<NoteReminder> newReminders, Note note) async {
    for (final oldReminder in note.reminders) {
      deleteReminder(oldReminder);
    }

    for (final reminder in newReminders) {
      addReminder(reminder);
    }
  }

  @override
  Future<void> deleteReminder(NoteReminder reminder) async {
    await remindersBox.delete(reminder.id);
    notificationsRepository.deleteScheduledNotification(reminder);
  }

  @override
  Future<void> addReminder(NoteReminder reminder) async {
    await remindersBox.put(reminder.id, reminder.toJson());
    notificationsRepository.scheduleNotification(reminder);
  }
}
