import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';
import 'package:inscribe/core/presentation/widgets/default_app_header.dart';
import 'package:inscribe/features/calendar/cubit/calendar_cubit.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  final cubit = IC.getIt<CalendarCubit>();

  @override
  void initState() {
    super.initState();
    cubit.initState();
  }

  EventController getVisibleEventsForCalendar(
      List<CalendarEventData> visibleReminders) {
    final eventController = EventController();

    eventController.addAll(visibleReminders);

    return eventController;
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      includeDefaultPadding: false,
      enableDrawer: true,
      child: SafeArea(
        top: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultAppHeader(
              title: Translations.of(context).drawer.calendar,
            ),
            BlocBuilder<CalendarCubit, CalendarState>(
              bloc: cubit,
              builder: (context, state) {
                return CalendarControllerProvider(
                  controller: getVisibleEventsForCalendar(state.visibleEvents),
                  child: Expanded(
                    child: MonthView(
                      // headerStringBuilder: (date, {secondaryDate}) =>
                      //     date.toString(),
                      headerStyle: HeaderStyle(
                        decoration: BoxDecoration(
                          color: AppColorScheme.of(context).beige,
                        ),
                      ),
                      borderColor: AppColorScheme.of(context).beige,
                      showWeekTileBorder: false,
                      cellBuilder: (date, events, isToday, isInMonth,
                              hideDaysNotInMonth) =>
                          FilledCell(
                        date: date,
                        shouldHighlight: isToday,
                        titleColor: AppColorScheme.of(context).black,
                        highlightColor:
                            AppColorScheme.of(context).gray.withOpacity(0.75),
                        backgroundColor: isInMonth
                            ? AppColorScheme.of(context).white
                            : AppColorScheme.of(context).white.withOpacity(0.4),
                        events: events,
                        onTileTap: (event, date) {},
                        hideDaysNotInMonth: hideDaysNotInMonth,
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
