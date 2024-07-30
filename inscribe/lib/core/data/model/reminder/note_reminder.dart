import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_reminder.freezed.dart';
part 'note_reminder.g.dart';

@freezed
class NoteReminder with _$NoteReminder {
  factory NoteReminder({
    @Default(null) String? id,
    @Default(null) String? noteId,
    required String name,
    required DateTime date,
    @Default(false) bool isAnual,
  }) = _NoteReminder;

  const NoteReminder._();

  factory NoteReminder.fromJson(Map<String, dynamic> json) =>
      _$NoteReminderFromJson(json);
}
