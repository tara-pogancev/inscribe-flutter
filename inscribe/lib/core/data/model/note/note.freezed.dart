// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Note {

 String? get id; String get name; String get assetImage; Uri? get galleryImage; DateTime? get dateOfBirth; NoteType? get type; String? get description; String? get giftIdeas; bool get isDeleted; bool get isPinned; DateTime? get updatedAt; DateTime? get createdAt;@JsonKey(includeToJson: false) List<NoteReminder> get reminders;
/// Create a copy of Note
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoteCopyWith<Note> get copyWith => _$NoteCopyWithImpl<Note>(this as Note, _$identity);

  /// Serializes this Note to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Note&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.assetImage, assetImage) || other.assetImage == assetImage)&&(identical(other.galleryImage, galleryImage) || other.galleryImage == galleryImage)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.giftIdeas, giftIdeas) || other.giftIdeas == giftIdeas)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.isPinned, isPinned) || other.isPinned == isPinned)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.reminders, reminders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,assetImage,galleryImage,dateOfBirth,type,description,giftIdeas,isDeleted,isPinned,updatedAt,createdAt,const DeepCollectionEquality().hash(reminders));

@override
String toString() {
  return 'Note(id: $id, name: $name, assetImage: $assetImage, galleryImage: $galleryImage, dateOfBirth: $dateOfBirth, type: $type, description: $description, giftIdeas: $giftIdeas, isDeleted: $isDeleted, isPinned: $isPinned, updatedAt: $updatedAt, createdAt: $createdAt, reminders: $reminders)';
}


}

/// @nodoc
abstract mixin class $NoteCopyWith<$Res>  {
  factory $NoteCopyWith(Note value, $Res Function(Note) _then) = _$NoteCopyWithImpl;
@useResult
$Res call({
 String? id, String name, String assetImage, Uri? galleryImage, DateTime? dateOfBirth, NoteType? type, String? description, String? giftIdeas, bool isDeleted, bool isPinned, DateTime? updatedAt, DateTime? createdAt,@JsonKey(includeToJson: false) List<NoteReminder> reminders
});




}
/// @nodoc
class _$NoteCopyWithImpl<$Res>
    implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._self, this._then);

  final Note _self;
  final $Res Function(Note) _then;

/// Create a copy of Note
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? assetImage = null,Object? galleryImage = freezed,Object? dateOfBirth = freezed,Object? type = freezed,Object? description = freezed,Object? giftIdeas = freezed,Object? isDeleted = null,Object? isPinned = null,Object? updatedAt = freezed,Object? createdAt = freezed,Object? reminders = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,assetImage: null == assetImage ? _self.assetImage : assetImage // ignore: cast_nullable_to_non_nullable
as String,galleryImage: freezed == galleryImage ? _self.galleryImage : galleryImage // ignore: cast_nullable_to_non_nullable
as Uri?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NoteType?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,giftIdeas: freezed == giftIdeas ? _self.giftIdeas : giftIdeas // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,isPinned: null == isPinned ? _self.isPinned : isPinned // ignore: cast_nullable_to_non_nullable
as bool,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reminders: null == reminders ? _self.reminders : reminders // ignore: cast_nullable_to_non_nullable
as List<NoteReminder>,
  ));
}

}


/// Adds pattern-matching-related methods to [Note].
extension NotePatterns on Note {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Note value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Note() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Note value)  $default,){
final _that = this;
switch (_that) {
case _Note():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Note value)?  $default,){
final _that = this;
switch (_that) {
case _Note() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  String assetImage,  Uri? galleryImage,  DateTime? dateOfBirth,  NoteType? type,  String? description,  String? giftIdeas,  bool isDeleted,  bool isPinned,  DateTime? updatedAt,  DateTime? createdAt, @JsonKey(includeToJson: false)  List<NoteReminder> reminders)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Note() when $default != null:
return $default(_that.id,_that.name,_that.assetImage,_that.galleryImage,_that.dateOfBirth,_that.type,_that.description,_that.giftIdeas,_that.isDeleted,_that.isPinned,_that.updatedAt,_that.createdAt,_that.reminders);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  String assetImage,  Uri? galleryImage,  DateTime? dateOfBirth,  NoteType? type,  String? description,  String? giftIdeas,  bool isDeleted,  bool isPinned,  DateTime? updatedAt,  DateTime? createdAt, @JsonKey(includeToJson: false)  List<NoteReminder> reminders)  $default,) {final _that = this;
switch (_that) {
case _Note():
return $default(_that.id,_that.name,_that.assetImage,_that.galleryImage,_that.dateOfBirth,_that.type,_that.description,_that.giftIdeas,_that.isDeleted,_that.isPinned,_that.updatedAt,_that.createdAt,_that.reminders);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  String assetImage,  Uri? galleryImage,  DateTime? dateOfBirth,  NoteType? type,  String? description,  String? giftIdeas,  bool isDeleted,  bool isPinned,  DateTime? updatedAt,  DateTime? createdAt, @JsonKey(includeToJson: false)  List<NoteReminder> reminders)?  $default,) {final _that = this;
switch (_that) {
case _Note() when $default != null:
return $default(_that.id,_that.name,_that.assetImage,_that.galleryImage,_that.dateOfBirth,_that.type,_that.description,_that.giftIdeas,_that.isDeleted,_that.isPinned,_that.updatedAt,_that.createdAt,_that.reminders);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Note extends Note {
  const _Note({this.id, this.name = "", this.assetImage = "", this.galleryImage, this.dateOfBirth, this.type, this.description, this.giftIdeas, this.isDeleted = false, this.isPinned = false, this.updatedAt, this.createdAt, @JsonKey(includeToJson: false) final  List<NoteReminder> reminders = const []}): _reminders = reminders,super._();
  factory _Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);

@override final  String? id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String assetImage;
@override final  Uri? galleryImage;
@override final  DateTime? dateOfBirth;
@override final  NoteType? type;
@override final  String? description;
@override final  String? giftIdeas;
@override@JsonKey() final  bool isDeleted;
@override@JsonKey() final  bool isPinned;
@override final  DateTime? updatedAt;
@override final  DateTime? createdAt;
 final  List<NoteReminder> _reminders;
@override@JsonKey(includeToJson: false) List<NoteReminder> get reminders {
  if (_reminders is EqualUnmodifiableListView) return _reminders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reminders);
}


/// Create a copy of Note
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoteCopyWith<_Note> get copyWith => __$NoteCopyWithImpl<_Note>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NoteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Note&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.assetImage, assetImage) || other.assetImage == assetImage)&&(identical(other.galleryImage, galleryImage) || other.galleryImage == galleryImage)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.giftIdeas, giftIdeas) || other.giftIdeas == giftIdeas)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.isPinned, isPinned) || other.isPinned == isPinned)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._reminders, _reminders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,assetImage,galleryImage,dateOfBirth,type,description,giftIdeas,isDeleted,isPinned,updatedAt,createdAt,const DeepCollectionEquality().hash(_reminders));

@override
String toString() {
  return 'Note(id: $id, name: $name, assetImage: $assetImage, galleryImage: $galleryImage, dateOfBirth: $dateOfBirth, type: $type, description: $description, giftIdeas: $giftIdeas, isDeleted: $isDeleted, isPinned: $isPinned, updatedAt: $updatedAt, createdAt: $createdAt, reminders: $reminders)';
}


}

/// @nodoc
abstract mixin class _$NoteCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$NoteCopyWith(_Note value, $Res Function(_Note) _then) = __$NoteCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, String assetImage, Uri? galleryImage, DateTime? dateOfBirth, NoteType? type, String? description, String? giftIdeas, bool isDeleted, bool isPinned, DateTime? updatedAt, DateTime? createdAt,@JsonKey(includeToJson: false) List<NoteReminder> reminders
});




}
/// @nodoc
class __$NoteCopyWithImpl<$Res>
    implements _$NoteCopyWith<$Res> {
  __$NoteCopyWithImpl(this._self, this._then);

  final _Note _self;
  final $Res Function(_Note) _then;

/// Create a copy of Note
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? assetImage = null,Object? galleryImage = freezed,Object? dateOfBirth = freezed,Object? type = freezed,Object? description = freezed,Object? giftIdeas = freezed,Object? isDeleted = null,Object? isPinned = null,Object? updatedAt = freezed,Object? createdAt = freezed,Object? reminders = null,}) {
  return _then(_Note(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,assetImage: null == assetImage ? _self.assetImage : assetImage // ignore: cast_nullable_to_non_nullable
as String,galleryImage: freezed == galleryImage ? _self.galleryImage : galleryImage // ignore: cast_nullable_to_non_nullable
as Uri?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NoteType?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,giftIdeas: freezed == giftIdeas ? _self.giftIdeas : giftIdeas // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,isPinned: null == isPinned ? _self.isPinned : isPinned // ignore: cast_nullable_to_non_nullable
as bool,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reminders: null == reminders ? _self._reminders : reminders // ignore: cast_nullable_to_non_nullable
as List<NoteReminder>,
  ));
}


}

// dart format on
