import 'package:inscribe/core/data/model/reminder/note_reminder.dart';

abstract class NotificationsRepository {
  void scheduleNotification(NoteReminder reminder);

  void deleteScheduledNotification(NoteReminder reminder);
}
