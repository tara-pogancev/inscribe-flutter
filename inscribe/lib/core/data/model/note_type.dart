import 'package:flutter/material.dart';
import 'package:inscribe/core/i18n/strings.g.dart';

enum NoteType { friend, school, work, family, romantic }

extension NoteTypeExtension on NoteType {
  String getString(BuildContext context) {
    return Translations.of(context).newNoteScreen.categories[this.index];
  }
}
