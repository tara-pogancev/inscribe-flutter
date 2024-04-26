import 'package:flutter/material.dart';
import 'package:inscribe/core/i18n/strings.g.dart';

class Note {
  String? id;
  String name;
  String assetImage;
  Uri? galleryImage;
  DateTime? dateOfBirth;
  NoteType? category;
  String? description;
  String? giftIdeas;

  Note({
    this.id,
    required this.name,
    required this.assetImage,
    this.galleryImage,
    this.dateOfBirth,
    this.category,
    this.description,
    this.giftIdeas,
  });

  Note copyWith({
    String? id,
    String? name,
    String? assetImage,
    Uri? galleryImage,
    DateTime? dateOfBirth,
    String? description,
    String? giftIdeas,
  }) {
    return Note(
      id: id ?? this.id,
      name: name ?? this.name,
      assetImage: assetImage ?? this.assetImage,
      galleryImage: galleryImage ?? this.galleryImage,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
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
