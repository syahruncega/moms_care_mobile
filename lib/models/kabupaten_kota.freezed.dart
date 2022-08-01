// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kabupaten_kota.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KabupatenKota _$KabupatenKotaFromJson(Map<String, dynamic> json) {
  return _KabupatenKota.fromJson(json);
}

/// @nodoc
mixin _$KabupatenKota {
  int get id => throw _privateConstructorUsedError;
  String get provinsiId => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KabupatenKotaCopyWith<KabupatenKota> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KabupatenKotaCopyWith<$Res> {
  factory $KabupatenKotaCopyWith(
          KabupatenKota value, $Res Function(KabupatenKota) then) =
      _$KabupatenKotaCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String provinsiId,
      String nama,
      DateTime? deletedAt,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$KabupatenKotaCopyWithImpl<$Res>
    implements $KabupatenKotaCopyWith<$Res> {
  _$KabupatenKotaCopyWithImpl(this._value, this._then);

  final KabupatenKota _value;
  // ignore: unused_field
  final $Res Function(KabupatenKota) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? provinsiId = freezed,
    Object? nama = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      provinsiId: provinsiId == freezed
          ? _value.provinsiId
          : provinsiId // ignore: cast_nullable_to_non_nullable
              as String,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_KabupatenKotaCopyWith<$Res>
    implements $KabupatenKotaCopyWith<$Res> {
  factory _$$_KabupatenKotaCopyWith(
          _$_KabupatenKota value, $Res Function(_$_KabupatenKota) then) =
      __$$_KabupatenKotaCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String provinsiId,
      String nama,
      DateTime? deletedAt,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_KabupatenKotaCopyWithImpl<$Res>
    extends _$KabupatenKotaCopyWithImpl<$Res>
    implements _$$_KabupatenKotaCopyWith<$Res> {
  __$$_KabupatenKotaCopyWithImpl(
      _$_KabupatenKota _value, $Res Function(_$_KabupatenKota) _then)
      : super(_value, (v) => _then(v as _$_KabupatenKota));

  @override
  _$_KabupatenKota get _value => super._value as _$_KabupatenKota;

  @override
  $Res call({
    Object? id = freezed,
    Object? provinsiId = freezed,
    Object? nama = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_KabupatenKota(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      provinsiId: provinsiId == freezed
          ? _value.provinsiId
          : provinsiId // ignore: cast_nullable_to_non_nullable
              as String,
      nama: nama == freezed
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KabupatenKota implements _KabupatenKota {
  const _$_KabupatenKota(
      {required this.id,
      required this.provinsiId,
      required this.nama,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  factory _$_KabupatenKota.fromJson(Map<String, dynamic> json) =>
      _$$_KabupatenKotaFromJson(json);

  @override
  final int id;
  @override
  final String provinsiId;
  @override
  final String nama;
  @override
  final DateTime? deletedAt;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'KabupatenKota(id: $id, provinsiId: $provinsiId, nama: $nama, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KabupatenKota &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.provinsiId, provinsiId) &&
            const DeepCollectionEquality().equals(other.nama, nama) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(provinsiId),
      const DeepCollectionEquality().hash(nama),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_KabupatenKotaCopyWith<_$_KabupatenKota> get copyWith =>
      __$$_KabupatenKotaCopyWithImpl<_$_KabupatenKota>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KabupatenKotaToJson(
      this,
    );
  }
}

abstract class _KabupatenKota implements KabupatenKota {
  const factory _KabupatenKota(
      {required final int id,
      required final String provinsiId,
      required final String nama,
      final DateTime? deletedAt,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_KabupatenKota;

  factory _KabupatenKota.fromJson(Map<String, dynamic> json) =
      _$_KabupatenKota.fromJson;

  @override
  int get id;
  @override
  String get provinsiId;
  @override
  String get nama;
  @override
  DateTime? get deletedAt;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_KabupatenKotaCopyWith<_$_KabupatenKota> get copyWith =>
      throw _privateConstructorUsedError;
}
