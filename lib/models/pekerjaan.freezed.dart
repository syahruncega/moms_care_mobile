// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pekerjaan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pekerjaan _$PekerjaanFromJson(Map<String, dynamic> json) {
  return _Pekerjaan.fromJson(json);
}

/// @nodoc
mixin _$Pekerjaan {
  int get id => throw _privateConstructorUsedError;
  String get pekerjaan => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PekerjaanCopyWith<Pekerjaan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PekerjaanCopyWith<$Res> {
  factory $PekerjaanCopyWith(Pekerjaan value, $Res Function(Pekerjaan) then) =
      _$PekerjaanCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String pekerjaan,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class _$PekerjaanCopyWithImpl<$Res> implements $PekerjaanCopyWith<$Res> {
  _$PekerjaanCopyWithImpl(this._value, this._then);

  final Pekerjaan _value;
  // ignore: unused_field
  final $Res Function(Pekerjaan) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? pekerjaan = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pekerjaan: pekerjaan == freezed
          ? _value.pekerjaan
          : pekerjaan // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_PekerjaanCopyWith<$Res> implements $PekerjaanCopyWith<$Res> {
  factory _$$_PekerjaanCopyWith(
          _$_Pekerjaan value, $Res Function(_$_Pekerjaan) then) =
      __$$_PekerjaanCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String pekerjaan,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class __$$_PekerjaanCopyWithImpl<$Res> extends _$PekerjaanCopyWithImpl<$Res>
    implements _$$_PekerjaanCopyWith<$Res> {
  __$$_PekerjaanCopyWithImpl(
      _$_Pekerjaan _value, $Res Function(_$_Pekerjaan) _then)
      : super(_value, (v) => _then(v as _$_Pekerjaan));

  @override
  _$_Pekerjaan get _value => super._value as _$_Pekerjaan;

  @override
  $Res call({
    Object? id = freezed,
    Object? pekerjaan = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_Pekerjaan(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pekerjaan: pekerjaan == freezed
          ? _value.pekerjaan
          : pekerjaan // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pekerjaan implements _Pekerjaan {
  const _$_Pekerjaan(
      {required this.id,
      required this.pekerjaan,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  factory _$_Pekerjaan.fromJson(Map<String, dynamic> json) =>
      _$$_PekerjaanFromJson(json);

  @override
  final int id;
  @override
  final String pekerjaan;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'Pekerjaan(id: $id, pekerjaan: $pekerjaan, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pekerjaan &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.pekerjaan, pekerjaan) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(pekerjaan),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$$_PekerjaanCopyWith<_$_Pekerjaan> get copyWith =>
      __$$_PekerjaanCopyWithImpl<_$_Pekerjaan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PekerjaanToJson(
      this,
    );
  }
}

abstract class _Pekerjaan implements Pekerjaan {
  const factory _Pekerjaan(
      {required final int id,
      required final String pekerjaan,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? deletedAt}) = _$_Pekerjaan;

  factory _Pekerjaan.fromJson(Map<String, dynamic> json) =
      _$_Pekerjaan.fromJson;

  @override
  int get id;
  @override
  String get pekerjaan;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_PekerjaanCopyWith<_$_Pekerjaan> get copyWith =>
      throw _privateConstructorUsedError;
}
