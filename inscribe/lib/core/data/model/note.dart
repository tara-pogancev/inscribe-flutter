import 'package:flutter/material.dart';
import 'package:inscribe/core/i18n/strings.g.dart';


class Note {
  final String? id;
  final String name;
  final String assetImage;
  final Uri? galleryImage;
  final DateTime? dateOfBirth;
  final NoteType? type;
  final String? description;
  final String? giftIdeas;

  const Note({
    this.id,
    this.name = "",
    this.assetImage = "",
    this.galleryImage,
    this.dateOfBirth,
    this.type,
    this.description,
    this.giftIdeas,
  });

  Note copyWith({
    String? id,
    String? name,
    String? assetImage,
    Uri? galleryImage,
    DateTime? dateOfBirth,
    NoteType? type,
    String? description,
    String? giftIdeas,
  }) {
    return Note(
      id: id ?? this.id,
      name: name ?? this.name,
      assetImage: assetImage ?? this.assetImage,
      galleryImage: galleryImage ?? this.galleryImage,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      type: type ?? this.type,
      description: description ?? this.description,
      giftIdeas: giftIdeas ?? this.giftIdeas,
    );
  }
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
