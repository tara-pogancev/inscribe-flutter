import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/presentation/app_box_decorations.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';

class ScheduledNotificationDebugCard extends StatelessWidget {
  const ScheduledNotificationDebugCard({super.key, required this.notification});

  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppBoxDecorations.of(context).outlined,
      child: Padding(
        padding: const EdgeInsets.all(defaultDividerDimension),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ID: " + (notification.content?.id.toString() ?? "-"),
              style: AppTextStyles.of(context).cardSecondaryText,
            ),
            Text(
              (notification.content?.title ?? "-"),
              style: AppTextStyles.of(context).cardPrimaryText,
            ),
            Text(
              "Channel: " + (notification.content?.channelKey ?? "-"),
              style: AppTextStyles.of(context).cardTernaryText,
            ),
            Divider(
              color: AppColorScheme.of(context).gray,
            ),
            Text(
              notification.schedule.toString(),
              style: AppTextStyles.of(context).cardTernaryText.copyWith(
                  fontStyle: FontStyle.italic,
                  color: AppColorScheme.of(context).gray.withOpacity(0.5)),
            ),
            // Text(notification.toString() ?? "-"),
          ],
        ),
      ),
    );
  }
}
