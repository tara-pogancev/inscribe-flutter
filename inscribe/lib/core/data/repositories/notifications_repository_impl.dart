import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';
import 'package:inscribe/core/domain/repositories/notifications_repository.dart';

class NotificationsRepositoryImpl implements NotificationsRepository {
  final AwesomeNotifications awesomeNotifications;

  NotificationsRepositoryImpl({required this.awesomeNotifications});

  @override
  void deleteScheduledNotification(NoteReminder reminder) {
    // TODO: implement deleteScheduledNotification
  }

  @override
  void scheduleNotification(NoteReminder reminder) {
    // TODO: implement scheduleNotification
  }

  @override
  void createOrUpdateBirthdayReminder(Note birthdayNote) {
    // TODO: implement createOrUpdateBirthdayReminder
  }

  @override
  void deleteBirthdayReminder(Note birthdayNote) {
    // TODO: implement deleteBirthdayReminder
  }
}
