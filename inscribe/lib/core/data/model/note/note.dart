import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inscribe/core/data/model/note_type.dart';

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
    @Default(null) DateTime? createdAt,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}
