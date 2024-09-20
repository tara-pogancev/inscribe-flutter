import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inscribe/core/data/model/calendar_event_metadata.dart';
import 'package:inscribe/core/extensions/date_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';
import 'package:inscribe/core/presentation/widgets/default_app_header.dart';
import 'package:inscribe/features/calendar/cubit/calendar_cubit.dart';
import 'package:inscribe/features/calendar/ui/adaptable_filled_cell.dart';
import 'package:inscribe/features/calendar/ui/daily_events_bottom_sheet.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  final cubit = IC.getIt<CalendarCubit>();
  EventController eventController = EventController();

  @override
  void initState() {
    super.initState();
    cubit.initState();
  }

  void setVisibleEventsForCalendar() {
    eventController = EventController();

    final stateEvents = cubit.state.visibleEvents;

    final caneldarEvents = stateEvents
        .map(
          (e) => CalendarEventData(
            title: e.title,
            date: e.date,
            description: e.description,
            event: e.event,
            color: (e.event as CalendarEventMetadata)
                .getEventColorForType(context),
          ),
        )
        .toList();

    eventController.addAll(caneldarEvents);
  }

  void onMonthChange(DateTime centerDate) {
    cubit.setVisibleEvents(centerDate);
    setVisibleEventsForCalendar();
  }

  void showDailyEventsBottomSheet(DateTime date) {
    List<CalendarEventData> events = eventController.getEventsOnDay(date);

    if (events.isNotEmpty) {
      showModalBottomSheet(
        context: context,
        isDismissible: true,
        builder: (context) =>
            DailyEventsBottomSheet(events: events, date: date),
      );
    }
  }

  double calculateCellAspectRatio(double height, double width) {
    final cellHeight = (height - 76) / 6;
    final cellWidth = width / 7;
    return cellWidth / cellHeight;
  }

  @override
  Widget build(BuildContext context) {
    setVisibleEventsForCalendar();
    return AppScaffold(
      includeDefaultPadding: false,
      enableDrawer: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultAppHeader(
            includeAdditionalPadding: true,
            title: Translations.of(context).drawer.calendar,
          ),
          BlocBuilder<CalendarCubit, CalendarState>(
            bloc: cubit,
            builder: (context, state) => CalendarControllerProvider(
              controller: eventController,
              child: Flexible(
                child: MonthView(
                  // cellAspectRatio: calculateCellAspectRatio(
                  //     constraints.maxHeight, constraints.maxWidth),
                  headerBuilder: (date) => Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(date.formatMonthCalendarHeaderString(),
                          style: AppTextStyles.of(context).cardPrimaryText),
                    ),
                  ),
                  weekDayBuilder: (dayNumber) => Container(
                    color: AppColorScheme.of(context).white,
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        dayNumber.formatDayCalendar(),
                        style: AppTextStyles.of(context)
                            .defaultText
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    )),
                  ),
                  onPageChange: (date, page) => onMonthChange(date),
                  borderColor: AppColorScheme.of(context).beige,
                  showWeekTileBorder: false,
                  cellBuilder:
                      (date, events, isToday, isInMonth, hideDaysNotInMonth) =>
                          AdaptableFilledCell(
                    date: date,
                    shouldHighlight: isToday,
                    backgroundColor: isInMonth
                        ? AppColorScheme.of(context).white
                        : AppColorScheme.of(context).white.withOpacity(0.4),
                    events: events,
                    onTileTap: (event, date) {},
                    hideDaysNotInMonth: hideDaysNotInMonth,
                  ),
                  onCellTap: (events, date) => showDailyEventsBottomSheet(date),
                  onEventTap: (event, date) => showDailyEventsBottomSheet(date),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
