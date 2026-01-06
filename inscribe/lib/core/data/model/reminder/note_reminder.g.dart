// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_reminder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NoteReminder _$NoteReminderFromJson(Map<String, dynamic> json) =>
    _NoteReminder(
      id: json['id'] as String?,
      noteId: json['noteId'] as String?,
      personName: json['personName'] as String?,
      name: json['name'] as String,
      date: DateTime.parse(json['date'] as String),
      isAnual: json['isAnual'] as bool? ?? false,
    );

Map<String, dynamic> _$NoteReminderToJson(_NoteReminder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'noteId': instance.noteId,
      'personName': instance.personName,
      'name': instance.name,
      'date': instance.date.toIso8601String(),
      'isAnual': instance.isAnual,
    };
