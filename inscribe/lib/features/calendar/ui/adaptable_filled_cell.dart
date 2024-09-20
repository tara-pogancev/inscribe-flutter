import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';

class AdaptableFilledCell<T extends Object?> extends StatelessWidget {
  const AdaptableFilledCell({
    super.key,
    required this.date,
    required this.events,
    this.isInMonth = false,
    this.hideDaysNotInMonth = true,
    this.shouldHighlight = false,
    this.backgroundColor = Colors.blue,
    this.onTileTap,
    this.onTileLongTap,
    this.highlightRadius = 11,
    this.dateStringBuilder,
    this.onTileDoubleTap,
  });

  /// Date of current cell.
  final DateTime date;

  /// List of events on for current date.
  final List<CalendarEventData<T>> events;

  /// defines date string for current cell.
  final StringProvider? dateStringBuilder;

  /// Defines if cell should be highlighted or not.
  /// If true it will display date title in a circle.
  final bool shouldHighlight;

  /// Defines background color of cell.
  final Color backgroundColor;

  /// Called when user taps on any event tile.
  final TileTapCallback<T>? onTileTap;

  /// Called when user long press on any event tile.
  final TileTapCallback<T>? onTileLongTap;

  /// Called when user double tap on any event tile.
  final TileTapCallback<T>? onTileDoubleTap;

  /// defines that [date] is in current month or not.
  final bool isInMonth;

  /// defines radius of highlighted date.
  final double highlightRadius;

  /// defines that show and hide cell not is in current month
  final bool hideDaysNotInMonth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          const SizedBox(
            height: 5.0,
          ),
          if (!(!isInMonth && hideDaysNotInMonth))
            CircleAvatar(
              radius: highlightRadius,
              backgroundColor: shouldHighlight
                  ? AppColorScheme.of(context).gray.withOpacity(0.75)
                  : Colors.transparent,
              child: Text(
                dateStringBuilder?.call(date) ?? "${date.day}",
                style: TextStyle(
                  color: shouldHighlight
                      ? AppColorScheme.of(context).white
                      : isInMonth
                          ? AppColorScheme.of(context).black
                          : AppColorScheme.of(context).black.withOpacity(0.4),
                  fontSize: 12,
                ),
              ),
            ),
          if (events.isNotEmpty)
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 5.0),
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      events.length,
                      (index) => GestureDetector(
                        onTap: () => onTileTap?.call(events[index], date),
                        onLongPress: () =>
                            onTileLongTap?.call(events[index], date),
                        onDoubleTap: () =>
                            onTileDoubleTap?.call(events[index], date),
                        child: Container(
                          decoration: BoxDecoration(
                            color: events[index].color,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          margin: const EdgeInsets.symmetric(
                              vertical: 2.0, horizontal: 3.0),
                          padding: const EdgeInsets.all(2.0),
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  events[index].title,
                                  overflow: TextOverflow.clip,
                                  maxLines: 1,
                                  style: events[index].titleStyle ??
                                      TextStyle(
                                        color: events[index].color.accent,
                                        fontSize: 12,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
