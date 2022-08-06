// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'golongan_darah.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GolonganDarah _$GolonganDarahFromJson(Map<String, dynamic> json) {
  return _GolonganDarah.fromJson(json);
}

/// @nodoc
mixin _$GolonganDarah {
  int get id => throw _privateConstructorUsedError;
  String get golonganDarah => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GolonganDarahCopyWith<GolonganDarah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GolonganDarahCopyWith<$Res> {
  factory $GolonganDarahCopyWith(
          GolonganDarah value, $Res Function(GolonganDarah) then) =
      _$GolonganDarahCopyWithImpl<$Res>;
  $Res call({int id, String golonganDarah, DateTime? deletedAt});
}

/// @nodoc
class _$GolonganDarahCopyWithImpl<$Res>
    implements $GolonganDarahCopyWith<$Res> {
  _$GolonganDarahCopyWithImpl(this._value, this._then);

  final GolonganDarah _value;
  // ignore: unused_field
  final $Res Function(GolonganDarah) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? golonganDarah = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      golonganDarah: golonganDarah == freezed
          ? _value.golonganDarah
          : golonganDarah // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_GolonganDarahCopyWith<$Res>
    implements $GolonganDarahCopyWith<$Res> {
  factory _$$_GolonganDarahCopyWith(
          _$_GolonganDarah value, $Res Function(_$_GolonganDarah) then) =
      __$$_GolonganDarahCopyWithImpl<$Res>;
  @override
  $Res call({int id, String golonganDarah, DateTime? deletedAt});
}

/// @nodoc
class __$$_GolonganDarahCopyWithImpl<$Res>
    extends _$GolonganDarahCopyWithImpl<$Res>
    implements _$$_GolonganDarahCopyWith<$Res> {
  __$$_GolonganDarahCopyWithImpl(
      _$_GolonganDarah _value, $Res Function(_$_GolonganDarah) _then)
      : super(_value, (v) => _then(v as _$_GolonganDarah));

  @override
  _$_GolonganDarah get _value => super._value as _$_GolonganDarah;

  @override
  $Res call({
    Object? id = freezed,
    Object? golonganDarah = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_GolonganDarah(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      golonganDarah: golonganDarah == freezed
          ? _value.golonganDarah
          : golonganDarah // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GolonganDarah implements _GolonganDarah {
  const _$_GolonganDarah(
      {required this.id, required this.golonganDarah, this.deletedAt});

  factory _$_GolonganDarah.fromJson(Map<String, dynamic> json) =>
      _$$_GolonganDarahFromJson(json);

  @override
  final int id;
  @override
  final String golonganDarah;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'GolonganDarah(id: $id, golonganDarah: $golonganDarah, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GolonganDarah &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.golonganDarah, golonganDarah) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(golonganDarah),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$$_GolonganDarahCopyWith<_$_GolonganDarah> get copyWith =>
      __$$_GolonganDarahCopyWithImpl<_$_GolonganDarah>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GolonganDarahToJson(
      this,
    );
  }
}

abstract class _GolonganDarah implements GolonganDarah {
  const factory _GolonganDarah(
      {required final int id,
      required final String golonganDarah,
      final DateTime? deletedAt}) = _$_GolonganDarah;

  factory _GolonganDarah.fromJson(Map<String, dynamic> json) =
      _$_GolonganDarah.fromJson;

  @override
  int get id;
  @override
  String get golonganDarah;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_GolonganDarahCopyWith<_$_GolonganDarah> get copyWith =>
      throw _privateConstructorUsedError;
}
