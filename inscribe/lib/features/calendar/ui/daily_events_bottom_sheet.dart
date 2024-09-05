import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/data/model/calendar_event_metadata.dart';
import 'package:inscribe/core/extensions/date_extensions.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/widgets/clickable_rounded_container.dart';
import 'package:inscribe/core/router/app_router.dart';

class DailyEventsBottomSheet extends StatelessWidget {
  const DailyEventsBottomSheet(
      {super.key, required this.events, required this.date});

  final List<CalendarEventData> events;

  final DateTime date;

  void navigateNote(String noteId, BuildContext context) {
    if (noteId.isNotEmpty) {
      context.push(Routes.noteDetails, extra: noteId);
    }
  }

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

                  final noteId =
                      (eventMetadata.type == CalendarEventType.birthday)
                          ? eventMetadata.note!.id
                          : eventMetadata.reminder!.noteId;

                  return ClickableRoundedContainer(
                    onClick: () => navigateNote(noteId ?? "", context),
                    color: event.color,
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
