// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_reminder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteReminderImpl _$$NoteReminderImplFromJson(Map<String, dynamic> json) =>
    _$NoteReminderImpl(
      id: json['id'] as String? ?? null,
      noteId: json['noteId'] as String? ?? null,
      name: json['name'] as String,
      date: DateTime.parse(json['date'] as String),
      isAnual: json['isAnual'] as bool? ?? false,
    );

Map<String, dynamic> _$$NoteReminderImplToJson(_$NoteReminderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'noteId': instance.noteId,
      'name': instance.name,
      'date': instance.date.toIso8601String(),
      'isAnual': instance.isAnual,
    };
