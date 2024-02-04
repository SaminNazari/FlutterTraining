// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_chapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityChapter _$EntityChapterFromJson(Map<String, dynamic> json) {
  return _EntityChapter.fromJson(json);
}

/// @nodoc
mixin _$EntityChapter {
  dynamic get title => throw _privateConstructorUsedError;
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get imageLink => throw _privateConstructorUsedError;
  dynamic get isBought => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityChapterCopyWith<EntityChapter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityChapterCopyWith<$Res> {
  factory $EntityChapterCopyWith(
          EntityChapter value, $Res Function(EntityChapter) then) =
      _$EntityChapterCopyWithImpl<$Res, EntityChapter>;
  @useResult
  $Res call({dynamic title, dynamic id, dynamic imageLink, dynamic isBought});
}

/// @nodoc
class _$EntityChapterCopyWithImpl<$Res, $Val extends EntityChapter>
    implements $EntityChapterCopyWith<$Res> {
  _$EntityChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
    Object? imageLink = freezed,
    Object? isBought = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      imageLink: freezed == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isBought: freezed == isBought
          ? _value.isBought
          : isBought // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityChapterImplCopyWith<$Res>
    implements $EntityChapterCopyWith<$Res> {
  factory _$$EntityChapterImplCopyWith(
          _$EntityChapterImpl value, $Res Function(_$EntityChapterImpl) then) =
      __$$EntityChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic title, dynamic id, dynamic imageLink, dynamic isBought});
}

/// @nodoc
class __$$EntityChapterImplCopyWithImpl<$Res>
    extends _$EntityChapterCopyWithImpl<$Res, _$EntityChapterImpl>
    implements _$$EntityChapterImplCopyWith<$Res> {
  __$$EntityChapterImplCopyWithImpl(
      _$EntityChapterImpl _value, $Res Function(_$EntityChapterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
    Object? imageLink = freezed,
    Object? isBought = freezed,
  }) {
    return _then(_$EntityChapterImpl(
      title: freezed == title ? _value.title! : title,
      id: freezed == id ? _value.id! : id,
      imageLink: freezed == imageLink ? _value.imageLink! : imageLink,
      isBought: freezed == isBought ? _value.isBought! : isBought,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EntityChapterImpl implements _EntityChapter {
  const _$EntityChapterImpl(
      {this.title = "", this.id = "", this.imageLink = "", this.isBought = ""});

  factory _$EntityChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntityChapterImplFromJson(json);

  @override
  @JsonKey()
  final dynamic title;
  @override
  @JsonKey()
  final dynamic id;
  @override
  @JsonKey()
  final dynamic imageLink;
  @override
  @JsonKey()
  final dynamic isBought;

  @override
  String toString() {
    return 'EntityChapter(title: $title, id: $id, imageLink: $imageLink, isBought: $isBought)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityChapterImpl &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageLink, imageLink) &&
            const DeepCollectionEquality().equals(other.isBought, isBought));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageLink),
      const DeepCollectionEquality().hash(isBought));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityChapterImplCopyWith<_$EntityChapterImpl> get copyWith =>
      __$$EntityChapterImplCopyWithImpl<_$EntityChapterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntityChapterImplToJson(
      this,
    );
  }
}

abstract class _EntityChapter implements EntityChapter {
  const factory _EntityChapter(
      {final dynamic title,
      final dynamic id,
      final dynamic imageLink,
      final dynamic isBought}) = _$EntityChapterImpl;

  factory _EntityChapter.fromJson(Map<String, dynamic> json) =
      _$EntityChapterImpl.fromJson;

  @override
  dynamic get title;
  @override
  dynamic get id;
  @override
  dynamic get imageLink;
  @override
  dynamic get isBought;
  @override
  @JsonKey(ignore: true)
  _$$EntityChapterImplCopyWith<_$EntityChapterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
