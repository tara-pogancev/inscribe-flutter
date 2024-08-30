import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/data/model/calendar_event_metadata.dart';
import 'package:inscribe/core/extensions/date_extensions.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';

class DailyEventsBottomSheet extends StatelessWidget {
  const DailyEventsBottomSheet(
      {super.key, required this.events, required this.date});

  final List<CalendarEventData> events;

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(defaultScreenPadding),
        child: Column(
          children: [
            Text(
              date.formatString(),
              style: AppTextStyles.of(context).cardPrimaryText,
            ),
            const Divider(
              height: defaultScreenPadding,
            ),
            Flexible(
              child: ListView.separated(
                itemCount: events.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: defaultDividerDimension,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  final event = events[index];
                  final eventMetadata = event.event as CalendarEventMetadata;
                  String description =
                      eventMetadata.getEventTypeDescriptions(context);

                  if (eventMetadata.type == CalendarEventType.oneTimeEvent) {
                    description =
                        "$description, ${eventMetadata.reminder?.date.formatTimeOfDayString()}";
                  }

                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                            Radius.circular(defaultBorderRadius)),
                        color: event.color),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Text(
                            event.title,
                            style: AppTextStyles.of(context)
                                .cardPrimaryText
                                .copyWith(
                                  color: eventMetadata
                                      .getEventTextColorForType(context),
                                ),
                          ),
                          Text(
                            description,
                            style: AppTextStyles.of(context)
                                .cardSecondaryText
                                .copyWith(
                                  color: eventMetadata
                                      .getEventTextColorForType(context),
                                ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
