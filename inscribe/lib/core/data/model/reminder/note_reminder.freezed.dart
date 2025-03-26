// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_reminder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteReminder _$NoteReminderFromJson(Map<String, dynamic> json) {
  return _NoteReminder.fromJson(json);
}

/// @nodoc
mixin _$NoteReminder {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get noteId => throw _privateConstructorUsedError;
  set noteId(String? value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  set date(DateTime value) => throw _privateConstructorUsedError;
  bool get isAnual => throw _privateConstructorUsedError;
  set isAnual(bool value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteReminderCopyWith<NoteReminder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteReminderCopyWith<$Res> {
  factory $NoteReminderCopyWith(
          NoteReminder value, $Res Function(NoteReminder) then) =
      _$NoteReminderCopyWithImpl<$Res, NoteReminder>;
  @useResult
  $Res call(
      {String? id, String? noteId, String name, DateTime date, bool isAnual});
}

/// @nodoc
class _$NoteReminderCopyWithImpl<$Res, $Val extends NoteReminder>
    implements $NoteReminderCopyWith<$Res> {
  _$NoteReminderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? noteId = freezed,
    Object? name = null,
    Object? date = null,
    Object? isAnual = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      noteId: freezed == noteId
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAnual: null == isAnual
          ? _value.isAnual
          : isAnual // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteReminderImplCopyWith<$Res>
    implements $NoteReminderCopyWith<$Res> {
  factory _$$NoteReminderImplCopyWith(
          _$NoteReminderImpl value, $Res Function(_$NoteReminderImpl) then) =
      __$$NoteReminderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, String? noteId, String name, DateTime date, bool isAnual});
}

/// @nodoc
class __$$NoteReminderImplCopyWithImpl<$Res>
    extends _$NoteReminderCopyWithImpl<$Res, _$NoteReminderImpl>
    implements _$$NoteReminderImplCopyWith<$Res> {
  __$$NoteReminderImplCopyWithImpl(
      _$NoteReminderImpl _value, $Res Function(_$NoteReminderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? noteId = freezed,
    Object? name = null,
    Object? date = null,
    Object? isAnual = null,
  }) {
    return _then(_$NoteReminderImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      noteId: freezed == noteId
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAnual: null == isAnual
          ? _value.isAnual
          : isAnual // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteReminderImpl extends _NoteReminder {
  _$NoteReminderImpl(
      {this.id = null,
      this.noteId = null,
      required this.name,
      required this.date,
      this.isAnual = false})
      : super._();

  factory _$NoteReminderImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteReminderImplFromJson(json);

  @override
  @JsonKey()
  String? id;
  @override
  @JsonKey()
  String? noteId;
  @override
  String name;
  @override
  DateTime date;
  @override
  @JsonKey()
  bool isAnual;

  @override
  String toString() {
    return 'NoteReminder(id: $id, noteId: $noteId, name: $name, date: $date, isAnual: $isAnual)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteReminderImplCopyWith<_$NoteReminderImpl> get copyWith =>
      __$$NoteReminderImplCopyWithImpl<_$NoteReminderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteReminderImplToJson(
      this,
    );
  }
}

abstract class _NoteReminder extends NoteReminder {
  factory _NoteReminder(
      {String? id,
      String? noteId,
      required String name,
      required DateTime date,
      bool isAnual}) = _$NoteReminderImpl;
  _NoteReminder._() : super._();

  factory _NoteReminder.fromJson(Map<String, dynamic> json) =
      _$NoteReminderImpl.fromJson;

  @override
  String? get id;
  set id(String? value);
  @override
  String? get noteId;
  set noteId(String? value);
  @override
  String get name;
  set name(String value);
  @override
  DateTime get date;
  set date(DateTime value);
  @override
  bool get isAnual;
  set isAnual(bool value);
  @override
  @JsonKey(ignore: true)
  _$$NoteReminderImplCopyWith<_$NoteReminderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
