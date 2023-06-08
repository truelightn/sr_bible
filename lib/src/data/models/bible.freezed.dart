// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bible.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bible _$BibleFromJson(Map<String, dynamic> json) {
  return _Bible.fromJson(json);
}

/// @nodoc
mixin _$Bible {
  String? get abbrev => throw _privateConstructorUsedError;
  List<List<String>>? get chapters => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BibleCopyWith<Bible> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BibleCopyWith<$Res> {
  factory $BibleCopyWith(Bible value, $Res Function(Bible) then) =
      _$BibleCopyWithImpl<$Res, Bible>;
  @useResult
  $Res call({String? abbrev, List<List<String>>? chapters, String? name});
}

/// @nodoc
class _$BibleCopyWithImpl<$Res, $Val extends Bible>
    implements $BibleCopyWith<$Res> {
  _$BibleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbrev = freezed,
    Object? chapters = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      abbrev: freezed == abbrev
          ? _value.abbrev
          : abbrev // ignore: cast_nullable_to_non_nullable
              as String?,
      chapters: freezed == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<List<String>>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BibleCopyWith<$Res> implements $BibleCopyWith<$Res> {
  factory _$$_BibleCopyWith(_$_Bible value, $Res Function(_$_Bible) then) =
      __$$_BibleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? abbrev, List<List<String>>? chapters, String? name});
}

/// @nodoc
class __$$_BibleCopyWithImpl<$Res> extends _$BibleCopyWithImpl<$Res, _$_Bible>
    implements _$$_BibleCopyWith<$Res> {
  __$$_BibleCopyWithImpl(_$_Bible _value, $Res Function(_$_Bible) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbrev = freezed,
    Object? chapters = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Bible(
      abbrev: freezed == abbrev
          ? _value.abbrev
          : abbrev // ignore: cast_nullable_to_non_nullable
              as String?,
      chapters: freezed == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<List<String>>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bible implements _Bible {
  const _$_Bible({this.abbrev, final List<List<String>>? chapters, this.name})
      : _chapters = chapters;

  factory _$_Bible.fromJson(Map<String, dynamic> json) =>
      _$$_BibleFromJson(json);

  @override
  final String? abbrev;
  final List<List<String>>? _chapters;
  @override
  List<List<String>>? get chapters {
    final value = _chapters;
    if (value == null) return null;
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;

  @override
  String toString() {
    return 'Bible(abbrev: $abbrev, chapters: $chapters, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bible &&
            (identical(other.abbrev, abbrev) || other.abbrev == abbrev) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, abbrev,
      const DeepCollectionEquality().hash(_chapters), name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BibleCopyWith<_$_Bible> get copyWith =>
      __$$_BibleCopyWithImpl<_$_Bible>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BibleToJson(
      this,
    );
  }
}

abstract class _Bible implements Bible {
  const factory _Bible(
      {final String? abbrev,
      final List<List<String>>? chapters,
      final String? name}) = _$_Bible;

  factory _Bible.fromJson(Map<String, dynamic> json) = _$_Bible.fromJson;

  @override
  String? get abbrev;
  @override
  List<List<String>>? get chapters;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_BibleCopyWith<_$_Bible> get copyWith =>
      throw _privateConstructorUsedError;
}
