import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';
import 'package:inscribe/core/presentation/widgets/default_app_header.dart';
import 'package:inscribe/features/scheduled_notifications_debug_view/cubit/scheduled_notifications_cubit.dart';

class ScheduledNotificationsScreen extends StatelessWidget {
  const ScheduledNotificationsScreen({super.key});

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
                    DefaultAppHeader(
                      title: "Scheduled notifications",
                    ),
                    SizedBox(
                      height: defaultScreenPadding,
                    ),
                  ],
                ),
              ),
              SliverList.separated(
                itemCount: state.scheduledNotifications.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: defaultDividerDimension,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  final notification = state.scheduledNotifications[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(defaultBorderRadius),
                      border: Border.all(
                        color: AppColorScheme.of(context).black,
                        width: 3,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(defaultDividerDimension),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ID: " +
                                (notification.content?.id.toString() ?? "-"),
                            style: AppTextStyles.of(context).cardSecondaryText,
                          ),
                          Text(
                            (notification.content?.title ?? "-"),
                            style: AppTextStyles.of(context).cardPrimaryText,
                          ),
                          Text(
                            "Channel: " +
                                (notification.content?.channelKey ?? "-"),
                            style: AppTextStyles.of(context).cardTernaryText,
                          ),
                          Divider(
                            color: AppColorScheme.of(context).gray,
                          ),
                          Text(
                            notification.schedule.toString(),
                            style: AppTextStyles.of(context)
                                .cardTernaryText
                                .copyWith(
                                    fontStyle: FontStyle.italic,
                                    color: AppColorScheme.of(context)
                                        .gray
                                        .withOpacity(0.5)),
                          ),
                          // Text(notification.toString() ?? "-"),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          );
        },
      ),
    );
  }
}
