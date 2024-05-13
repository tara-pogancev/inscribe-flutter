import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inscribe/core/i18n/strings.g.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
class Note with _$Note {
  const factory Note({
    @Default(null) String? id,
    @Default("") String name,
    @Default("") String assetImage,
    @Default(null) Uri? galleryImage,
    @Default(null) DateTime? dateOfBirth,
    @Default(null) NoteType? type,
    @Default(null) String? description,
    @Default(null) String? giftIdeas,
    @Default(false) bool isDeleted,
    @Default(false) bool isPinned,
    @Default(null) DateTime? updatedAt,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}

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
