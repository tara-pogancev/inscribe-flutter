// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Note _$NoteFromJson(Map<String, dynamic> json) {
  return _Note.fromJson(json);
}

/// @nodoc
mixin _$Note {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get assetImage => throw _privateConstructorUsedError;
  Uri? get galleryImage => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  NoteType? get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get giftIdeas => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  bool get isPinned => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  List<NoteReminder> get reminders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteCopyWith<Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res, Note>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String assetImage,
      Uri? galleryImage,
      DateTime? dateOfBirth,
      NoteType? type,
      String? description,
      String? giftIdeas,
      bool isDeleted,
      bool isPinned,
      DateTime? updatedAt,
      DateTime? createdAt,
      List<NoteReminder> reminders});
}

/// @nodoc
class _$NoteCopyWithImpl<$Res, $Val extends Note>
    implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? assetImage = null,
    Object? galleryImage = freezed,
    Object? dateOfBirth = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? giftIdeas = freezed,
    Object? isDeleted = null,
    Object? isPinned = null,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? reminders = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      assetImage: null == assetImage
          ? _value.assetImage
          : assetImage // ignore: cast_nullable_to_non_nullable
              as String,
      galleryImage: freezed == galleryImage
          ? _value.galleryImage
          : galleryImage // ignore: cast_nullable_to_non_nullable
              as Uri?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NoteType?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      giftIdeas: freezed == giftIdeas
          ? _value.giftIdeas
          : giftIdeas // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reminders: null == reminders
          ? _value.reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as List<NoteReminder>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteImplCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$$NoteImplCopyWith(
          _$NoteImpl value, $Res Function(_$NoteImpl) then) =
      __$$NoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String assetImage,
      Uri? galleryImage,
      DateTime? dateOfBirth,
      NoteType? type,
      String? description,
      String? giftIdeas,
      bool isDeleted,
      bool isPinned,
      DateTime? updatedAt,
      DateTime? createdAt,
      List<NoteReminder> reminders});
}

/// @nodoc
class __$$NoteImplCopyWithImpl<$Res>
    extends _$NoteCopyWithImpl<$Res, _$NoteImpl>
    implements _$$NoteImplCopyWith<$Res> {
  __$$NoteImplCopyWithImpl(_$NoteImpl _value, $Res Function(_$NoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? assetImage = null,
    Object? galleryImage = freezed,
    Object? dateOfBirth = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? giftIdeas = freezed,
    Object? isDeleted = null,
    Object? isPinned = null,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? reminders = null,
  }) {
    return _then(_$NoteImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      assetImage: null == assetImage
          ? _value.assetImage
          : assetImage // ignore: cast_nullable_to_non_nullable
              as String,
      galleryImage: freezed == galleryImage
          ? _value.galleryImage
          : galleryImage // ignore: cast_nullable_to_non_nullable
              as Uri?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NoteType?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      giftIdeas: freezed == giftIdeas
          ? _value.giftIdeas
          : giftIdeas // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reminders: null == reminders
          ? _value._reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as List<NoteReminder>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteImpl extends _Note {
  const _$NoteImpl(
      {this.id = null,
      this.name = "",
      this.assetImage = "",
      this.galleryImage = null,
      this.dateOfBirth = null,
      this.type = null,
      this.description = null,
      this.giftIdeas = null,
      this.isDeleted = false,
      this.isPinned = false,
      this.updatedAt = null,
      this.createdAt = null,
      final List<NoteReminder> reminders = const []})
      : _reminders = reminders,
        super._();

  factory _$NoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteImplFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String assetImage;
  @override
  @JsonKey()
  final Uri? galleryImage;
  @override
  @JsonKey()
  final DateTime? dateOfBirth;
  @override
  @JsonKey()
  final NoteType? type;
  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey()
  final String? giftIdeas;
  @override
  @JsonKey()
  final bool isDeleted;
  @override
  @JsonKey()
  final bool isPinned;
  @override
  @JsonKey()
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final DateTime? createdAt;
  final List<NoteReminder> _reminders;
  @override
  @JsonKey()
  List<NoteReminder> get reminders {
    if (_reminders is EqualUnmodifiableListView) return _reminders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reminders);
  }

  @override
  String toString() {
    return 'Note(id: $id, name: $name, assetImage: $assetImage, galleryImage: $galleryImage, dateOfBirth: $dateOfBirth, type: $type, description: $description, giftIdeas: $giftIdeas, isDeleted: $isDeleted, isPinned: $isPinned, updatedAt: $updatedAt, createdAt: $createdAt, reminders: $reminders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.assetImage, assetImage) ||
                other.assetImage == assetImage) &&
            (identical(other.galleryImage, galleryImage) ||
                other.galleryImage == galleryImage) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.giftIdeas, giftIdeas) ||
                other.giftIdeas == giftIdeas) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._reminders, _reminders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      assetImage,
      galleryImage,
      dateOfBirth,
      type,
      description,
      giftIdeas,
      isDeleted,
      isPinned,
      updatedAt,
      createdAt,
      const DeepCollectionEquality().hash(_reminders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      __$$NoteImplCopyWithImpl<_$NoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteImplToJson(
      this,
    );
  }
}

abstract class _Note extends Note {
  const factory _Note(
      {final String? id,
      final String name,
      final String assetImage,
      final Uri? galleryImage,
      final DateTime? dateOfBirth,
      final NoteType? type,
      final String? description,
      final String? giftIdeas,
      final bool isDeleted,
      final bool isPinned,
      final DateTime? updatedAt,
      final DateTime? createdAt,
      final List<NoteReminder> reminders}) = _$NoteImpl;
  const _Note._() : super._();

  factory _Note.fromJson(Map<String, dynamic> json) = _$NoteImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String get assetImage;
  @override
  Uri? get galleryImage;
  @override
  DateTime? get dateOfBirth;
  @override
  NoteType? get type;
  @override
  String? get description;
  @override
  String? get giftIdeas;
  @override
  bool get isDeleted;
  @override
  bool get isPinned;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get createdAt;
  @override
  List<NoteReminder> get reminders;
  @override
  @JsonKey(ignore: true)
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
