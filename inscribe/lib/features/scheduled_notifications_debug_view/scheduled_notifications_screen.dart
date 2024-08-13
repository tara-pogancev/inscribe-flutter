import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/widgets/app_button.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';
import 'package:inscribe/core/presentation/widgets/default_app_header.dart';
import 'package:inscribe/features/scheduled_notifications_debug_view/cubit/scheduled_notifications_cubit.dart';
import 'package:inscribe/features/scheduled_notifications_debug_view/scheduled_notification_debug_card.dart';

class ScheduledNotificationsScreen extends StatefulWidget {
  const ScheduledNotificationsScreen({super.key});

  @override
  State<ScheduledNotificationsScreen> createState() =>
      _ScheduledNotificationsScreenState();
}

class _ScheduledNotificationsScreenState
    extends State<ScheduledNotificationsScreen> {
  final _cubit = IC.getIt<ScheduledNotificationsCubit>();

  void refreshNotifications() {
    _cubit.initState();
  }

  @override
  void initState() {
    super.initState();
    _cubit.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      includeDefaultPadding: true,
      enableDrawer: true,
      child:
          BlocBuilder<ScheduledNotificationsCubit, ScheduledNotificationsState>(
        bloc: IC.getIt(),
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const DefaultAppHeader(
                      title: "Scheduled notifications",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: AppButton(
                          text: "Reload",
                          onPressed: () => refreshNotifications()),
                    )
                  ],
                ),
              ),
              (state.scheduledNotifications.isEmpty)
                  ? const SliverToBoxAdapter(
                      child: Text("No scheduled notifications"))
                  : SliverList.separated(
                      itemCount: state.scheduledNotifications.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          height: defaultDividerDimension,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        final notification =
                            state.scheduledNotifications[index];
                        return ScheduledNotificationDebugCard(
                            notification: notification);
                      },
                    )
            ],
          );
        },
      ),
    );
  }
}
