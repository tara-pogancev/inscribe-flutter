import 'package:flutter/material.dart';
import 'package:inscribe/core/i18n/strings.g.dart';

enum NoteType { friend, school, work, romantic, family }

extension NoteTypeExtension on NoteType {
  String getString(BuildContext context) {
    switch (this) {
      case NoteType.friend:
        return Translations.of(context).newNoteScreen.categories[0];

      case NoteType.work:
        return Translations.of(context).newNoteScreen.categories[1];

      case NoteType.family:
        return Translations.of(context).newNoteScreen.categories[2];

      case NoteType.school:
        return Translations.of(context).newNoteScreen.categories[3];

      case NoteType.romantic:
        return Translations.of(context).newNoteScreen.categories[4];
    }
  }
}
