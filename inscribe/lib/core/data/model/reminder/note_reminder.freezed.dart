// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_reminder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NoteReminder {

 String? get id; set id(String? value); String? get noteId; set noteId(String? value); String? get personName; set personName(String? value); String get name; set name(String value); DateTime get date; set date(DateTime value); bool get isAnual; set isAnual(bool value);
/// Create a copy of NoteReminder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoteReminderCopyWith<NoteReminder> get copyWith => _$NoteReminderCopyWithImpl<NoteReminder>(this as NoteReminder, _$identity);

  /// Serializes this NoteReminder to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'NoteReminder(id: $id, noteId: $noteId, personName: $personName, name: $name, date: $date, isAnual: $isAnual)';
}


}

/// @nodoc
abstract mixin class $NoteReminderCopyWith<$Res>  {
  factory $NoteReminderCopyWith(NoteReminder value, $Res Function(NoteReminder) _then) = _$NoteReminderCopyWithImpl;
@useResult
$Res call({
 String? id, String? noteId, String? personName, String name, DateTime date, bool isAnual
});




}
/// @nodoc
class _$NoteReminderCopyWithImpl<$Res>
    implements $NoteReminderCopyWith<$Res> {
  _$NoteReminderCopyWithImpl(this._self, this._then);

  final NoteReminder _self;
  final $Res Function(NoteReminder) _then;

/// Create a copy of NoteReminder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? noteId = freezed,Object? personName = freezed,Object? name = null,Object? date = null,Object? isAnual = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,noteId: freezed == noteId ? _self.noteId : noteId // ignore: cast_nullable_to_non_nullable
as String?,personName: freezed == personName ? _self.personName : personName // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,isAnual: null == isAnual ? _self.isAnual : isAnual // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NoteReminder].
extension NoteReminderPatterns on NoteReminder {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoteReminder value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoteReminder() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoteReminder value)  $default,){
final _that = this;
switch (_that) {
case _NoteReminder():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoteReminder value)?  $default,){
final _that = this;
switch (_that) {
case _NoteReminder() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? noteId,  String? personName,  String name,  DateTime date,  bool isAnual)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoteReminder() when $default != null:
return $default(_that.id,_that.noteId,_that.personName,_that.name,_that.date,_that.isAnual);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? noteId,  String? personName,  String name,  DateTime date,  bool isAnual)  $default,) {final _that = this;
switch (_that) {
case _NoteReminder():
return $default(_that.id,_that.noteId,_that.personName,_that.name,_that.date,_that.isAnual);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? noteId,  String? personName,  String name,  DateTime date,  bool isAnual)?  $default,) {final _that = this;
switch (_that) {
case _NoteReminder() when $default != null:
return $default(_that.id,_that.noteId,_that.personName,_that.name,_that.date,_that.isAnual);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NoteReminder extends NoteReminder {
   _NoteReminder({this.id, this.noteId, this.personName, required this.name, required this.date, this.isAnual = false}): super._();
  factory _NoteReminder.fromJson(Map<String, dynamic> json) => _$NoteReminderFromJson(json);

@override  String? id;
@override  String? noteId;
@override  String? personName;
@override  String name;
@override  DateTime date;
@override@JsonKey()  bool isAnual;

/// Create a copy of NoteReminder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoteReminderCopyWith<_NoteReminder> get copyWith => __$NoteReminderCopyWithImpl<_NoteReminder>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NoteReminderToJson(this, );
}



@override
String toString() {
  return 'NoteReminder(id: $id, noteId: $noteId, personName: $personName, name: $name, date: $date, isAnual: $isAnual)';
}


}

/// @nodoc
abstract mixin class _$NoteReminderCopyWith<$Res> implements $NoteReminderCopyWith<$Res> {
  factory _$NoteReminderCopyWith(_NoteReminder value, $Res Function(_NoteReminder) _then) = __$NoteReminderCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? noteId, String? personName, String name, DateTime date, bool isAnual
});




}
/// @nodoc
class __$NoteReminderCopyWithImpl<$Res>
    implements _$NoteReminderCopyWith<$Res> {
  __$NoteReminderCopyWithImpl(this._self, this._then);

  final _NoteReminder _self;
  final $Res Function(_NoteReminder) _then;

/// Create a copy of NoteReminder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? noteId = freezed,Object? personName = freezed,Object? name = null,Object? date = null,Object? isAnual = null,}) {
  return _then(_NoteReminder(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,noteId: freezed == noteId ? _self.noteId : noteId // ignore: cast_nullable_to_non_nullable
as String?,personName: freezed == personName ? _self.personName : personName // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,isAnual: null == isAnual ? _self.isAnual : isAnual // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
