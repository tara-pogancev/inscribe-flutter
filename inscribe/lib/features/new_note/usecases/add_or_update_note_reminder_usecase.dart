import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';
import 'package:inscribe/core/domain/model/usecase.dart';

class AddOrUpdateNoteReminderUsecase extends UseCase {
  Note call(Note note, NoteReminder reminder) {
    if (reminder.id == null) {
      reminder.id = uuid.v1();
    }

    reminder.noteId = note.id;

    var reminders = List<NoteReminder>.from(note.reminders);

    if (reminders.where((r) => r.id == reminder.id).isEmpty) {
      reminders.add(reminder);
    } else {
      reminders = reminders.map((r) {
        return r.id == reminder.id ? reminder : r;
      }).toList();
    }

    return note.copyWith(reminders: reminders);
  }
}
