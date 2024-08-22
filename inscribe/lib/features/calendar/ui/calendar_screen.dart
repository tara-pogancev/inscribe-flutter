import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
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
                final eventController = EventController();

                eventController.addAll(state.events
                    .map(
                      (event) => CalendarEventData(
                        title: event.name,
                        date: event.date,
                        description: event.noteId,
                      ),
                    )
                    .toList());

                return CalendarControllerProvider(
                  controller: eventController,
                  child: const Flexible(flex: 1, child: MonthView()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
