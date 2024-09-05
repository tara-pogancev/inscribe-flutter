import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inscribe/core/data/model/note_type.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';
import 'package:inscribe/core/extensions/string_extensions.dart';

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
    @Default([]) @JsonKey(includeToJson: false) List<NoteReminder> reminders,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);

  const Note._();

  bool isFilteredBySearchText(String? searchText) {
    if (searchText == null) return true;

    return name.simplifyForSearch().contains(searchText.simplifyForSearch()) ||
        type
            .toString()
            .simplifyForSearch()
            .contains(searchText.simplifyForSearch());
  }

  Map<String, dynamic> toJsonWithReminders() => <String, dynamic>{
        'id': id,
        'name': name,
        'assetImage': assetImage,
        'galleryImage': galleryImage?.toString(),
        'dateOfBirth': dateOfBirth?.toIso8601String(),
        'type': _$NoteTypeEnumMap[type],
        'description': description,
        'giftIdeas': giftIdeas,
        'isDeleted': isDeleted,
        'isPinned': isPinned,
        'updatedAt': updatedAt?.toIso8601String(),
        'createdAt': createdAt?.toIso8601String(),
        'reminders': reminders.map((reminder) => reminder.toJson()).toList(),
      };
}
