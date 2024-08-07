import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';
import 'package:inscribe/core/extensions/date_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';

class ReminderCard extends StatefulWidget {
  const ReminderCard(
      {super.key,
      required this.reminder,
      required this.onEdit,
      required this.onDelete});

  final NoteReminder reminder;

  final Function() onEdit;
  final Function() onDelete;

  @override
  State<ReminderCard> createState() => _ReminderCardState();
}

class _ReminderCardState extends State<ReminderCard> {
  var _tapPosition;

  void _getTapPosition(TapDownDetails tapPosition, BuildContext context) {
    final RenderBox referenceBox = context.findRenderObject() as RenderBox;
    setState(() {
      _tapPosition = referenceBox.globalToLocal(tapPosition.globalPosition);
    });
  }

  void _showContextMenu(BuildContext context) async {
    final RenderBox? overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox?;

    if (overlay != null) {
      await showMenu(
        context: context,
        position: RelativeRect.fromRect(
          Rect.fromLTWH(_tapPosition.dx, _tapPosition.dy, 100, 100),
          Rect.fromLTWH(0, 0, overlay.paintBounds.size.width,
              overlay.paintBounds.size.height),
        ),
        items: <PopupMenuItem>[
          PopupMenuItem(
            child: Text(Translations.of(context).edit),
            onTap: () => widget.onEdit(),
          ),
          PopupMenuItem(
            child: Text(Translations.of(context).delete),
            onTap: () => widget.onDelete(),
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails tapDownDetails) {
        _getTapPosition(tapDownDetails, context);
      },
      onLongPress: () {
        HapticFeedback.mediumImpact();
        _showContextMenu(context);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultBorderRadius),
          border: Border.all(
            color: AppColorScheme.of(context).black,
            width: 3,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      widget.reminder.name,
                      style: AppTextStyles.of(context).cardPrimaryText,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      widget.reminder.date.formatFullDateTimeString(),
                      style: AppTextStyles.of(context).cardSecondaryText,
                      textAlign: TextAlign.end,
                    ),
                  )
                ],
              ),
              if (widget.reminder.isAnual)
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.event_repeat_outlined,
                        color: AppColorScheme.of(context).gray,
                        size: 15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                          Translations.of(context)
                              .newNoteScreen
                              .this_reminder_will_be_repeated_every_year,
                          style: AppTextStyles.of(context).cardTernaryText),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
