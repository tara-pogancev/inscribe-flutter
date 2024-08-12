import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';

abstract class NotificationsRepository {
  void scheduleNotification(NoteReminder reminder);

  void deleteScheduledNotification(NoteReminder reminder);

  void createOrUpdateBirthdayReminder(Note birthdayNote);

  void deleteBirthdayReminder(Note birthdayNote);
}
