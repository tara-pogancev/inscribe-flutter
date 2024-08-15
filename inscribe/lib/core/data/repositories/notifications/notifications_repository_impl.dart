import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';
import 'package:inscribe/core/data/repositories/notifications/notifications_repository.dart';

class NotificationsRepositoryImpl implements NotificationsRepository {
  final AwesomeNotifications awesomeNotifications;

  NotificationsRepositoryImpl({required this.awesomeNotifications});

  @override
  void deleteScheduledNotification(NoteReminder reminder) {
    AwesomeNotifications().cancel(reminder.id.hashCode);
  }

  @override
  void scheduleNotification(NoteReminder reminder) {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: reminder.id.hashCode,
            channelKey: remindersChannelKey,
            title: reminder.name,
            body: "Inscribe reminder",
            payload: {"noteId": reminder.noteId}),
        localizations: {
          serbianLocale: NotificationLocalization(body: "Inscribe podsetnik")
        },
        schedule: (reminder.isAnual)
            ? NotificationCalendar(
                month: reminder.date.month,
                day: reminder.date.day,
                hour: reminder.date.hour,
                minute: reminder.date.minute,
                second: 0,
                repeats: true,
                preciseAlarm: true,
                allowWhileIdle: true)
            : NotificationCalendar.fromDate(
                date: reminder.date, preciseAlarm: true, allowWhileIdle: true));
  }

  @override
  void createOrUpdateBirthdayReminder(Note birthdayNote) {
    if (birthdayNote.dateOfBirth != null) {
      AwesomeNotifications().createNotification(
          content: NotificationContent(
              id: birthdayNote.id.hashCode,
              channelKey: birthdayChannelKey,
              title: "It's ${birthdayNote.name}'s birthday today!",
              body: "Incribe birthday reminder",
              payload: {"noteId": birthdayNote.id}),
          localizations: {
            serbianLocale: NotificationLocalization(
              title: "Danas ${birthdayNote.name} slavi rođendan!",
              body: "Incribe podsetnik za rođendane",
            ),
          },
          schedule: NotificationCalendar(
              month: birthdayNote.dateOfBirth!.month,
              day: birthdayNote.dateOfBirth!.day,
              hour: 11,
              minute: 0,
              second: 0,
              repeats: true,
              preciseAlarm: true,
              allowWhileIdle: true));
    }
  }

  @override
  void deleteBirthdayReminder(Note birthdayNote) {
    AwesomeNotifications().cancel(birthdayNote.id.hashCode);
  }
}
