import 'package:colorist/colorist.dart';
import 'package:flutter/material.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';

class CalendarEventMetadata {
  CalendarEventType type;
  Note? note;
  NoteReminder? reminder;

  CalendarEventMetadata({required this.type, this.note, this.reminder});

  Color getEventColorForType(BuildContext context) {
    switch (type) {
      case CalendarEventType.birthday:
        return context.colors.red;
      case CalendarEventType.anualEvent:
        return context.colors.mediumGray;
      case CalendarEventType.oneTimeEvent:
        return context.colors.black;
    }
  }

  Color getEventTextColorForType(BuildContext context) {
    switch (type) {
      case CalendarEventType.birthday:
        return context.colors.white;
      case CalendarEventType.anualEvent:
        return (context.isDarkMode)
            ? context.colors.black
            : context.colors.white;
      case CalendarEventType.oneTimeEvent:
        return context.colors.white;
    }
  }

  String getEventTypeDescriptions(BuildContext context) {
    switch (type) {
      case CalendarEventType.birthday:
        return Translations.of(context).calendarScreen.birthday;
      case CalendarEventType.anualEvent:
        return Translations.of(context).calendarScreen.annualEvent;
      case CalendarEventType.oneTimeEvent:
        return Translations.of(context).calendarScreen.oneTimeReminder;
    }
  }
}

enum CalendarEventType { birthday, anualEvent, oneTimeEvent }
