import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:bloc/bloc.dart';

part 'scheduled_notifications_state.dart';

class ScheduledNotificationsCubit extends Cubit<ScheduledNotificationsState> {
  ScheduledNotificationsCubit() : super(ScheduledNotificationsState()) {
    initState();
  }

  void initState() async {
    final notifications =
        await AwesomeNotifications().listScheduledNotifications();
    notifications.sort((a, b) {
      return (a.content?.channelKey ?? '')
          .compareTo(b.content?.channelKey ?? '');
    });

    emit(ScheduledNotificationsState(scheduledNotifications: notifications));
  }
}
