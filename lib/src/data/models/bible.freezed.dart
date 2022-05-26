// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$BibleCopyWithImpl<$Res>;
  $Res call({String? abbrev, List<List<String>>? chapters, String? name});
}

/// @nodoc
class _$BibleCopyWithImpl<$Res> implements $BibleCopyWith<$Res> {
  _$BibleCopyWithImpl(this._value, this._then);

  final Bible _value;
  // ignore: unused_field
  final $Res Function(Bible) _then;

  @override
  $Res call({
    Object? abbrev = freezed,
    Object? chapters = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      abbrev: abbrev == freezed
          ? _value.abbrev
          : abbrev // ignore: cast_nullable_to_non_nullable
              as String?,
      chapters: chapters == freezed
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<List<String>>?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BibleCopyWith<$Res> implements $BibleCopyWith<$Res> {
  factory _$$_BibleCopyWith(_$_Bible value, $Res Function(_$_Bible) then) =
      __$$_BibleCopyWithImpl<$Res>;
  @override
  $Res call({String? abbrev, List<List<String>>? chapters, String? name});
}

/// @nodoc
class __$$_BibleCopyWithImpl<$Res> extends _$BibleCopyWithImpl<$Res>
    implements _$$_BibleCopyWith<$Res> {
  __$$_BibleCopyWithImpl(_$_Bible _value, $Res Function(_$_Bible) _then)
      : super(_value, (v) => _then(v as _$_Bible));

  @override
  _$_Bible get _value => super._value as _$_Bible;

  @override
  $Res call({
    Object? abbrev = freezed,
    Object? chapters = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Bible(
      abbrev: abbrev == freezed
          ? _value.abbrev
          : abbrev // ignore: cast_nullable_to_non_nullable
              as String?,
      chapters: chapters == freezed
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<List<String>>?,
      name: name == freezed
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
            const DeepCollectionEquality().equals(other.abbrev, abbrev) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(abbrev),
      const DeepCollectionEquality().hash(_chapters),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_BibleCopyWith<_$_Bible> get copyWith =>
      __$$_BibleCopyWithImpl<_$_Bible>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BibleToJson(this);
  }
}

abstract class _Bible implements Bible {
  const factory _Bible(
      {final String? abbrev,
      final List<List<String>>? chapters,
      final String? name}) = _$_Bible;

  factory _Bible.fromJson(Map<String, dynamic> json) = _$_Bible.fromJson;

  @override
  String? get abbrev => throw _privateConstructorUsedError;
  @override
  List<List<String>>? get chapters => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BibleCopyWith<_$_Bible> get copyWith =>
      throw _privateConstructorUsedError;
}
