// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'provinsi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Provinsi _$ProvinsiFromJson(Map<String, dynamic> json) {
  return _Provinsi.fromJson(json);
}

/// @nodoc
mixin _$Provinsi {
  int get id => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinsiCopyWith<Provinsi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinsiCopyWith<$Res> {
  factory $ProvinsiCopyWith(Provinsi value, $Res Function(Provinsi) then) =
      _$ProvinsiCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String nama,
      DateTime? deletedAt,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$ProvinsiCopyWithImpl<$Res> implements $ProvinsiCopyWith<$Res> {
  _$ProvinsiCopyWithImpl(this._value, this._then);

  final Provinsi _value;
  // ignore: unused_field
  final $Res Function(Provinsi) _then;

  @override
  $Res call({
    Object? id = freezed,
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
abstract class _$$_ProvinsiCopyWith<$Res> implements $ProvinsiCopyWith<$Res> {
  factory _$$_ProvinsiCopyWith(
          _$_Provinsi value, $Res Function(_$_Provinsi) then) =
      __$$_ProvinsiCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String nama,
      DateTime? deletedAt,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_ProvinsiCopyWithImpl<$Res> extends _$ProvinsiCopyWithImpl<$Res>
    implements _$$_ProvinsiCopyWith<$Res> {
  __$$_ProvinsiCopyWithImpl(
      _$_Provinsi _value, $Res Function(_$_Provinsi) _then)
      : super(_value, (v) => _then(v as _$_Provinsi));

  @override
  _$_Provinsi get _value => super._value as _$_Provinsi;

  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Provinsi(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_Provinsi implements _Provinsi {
  const _$_Provinsi(
      {required this.id,
      required this.nama,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  factory _$_Provinsi.fromJson(Map<String, dynamic> json) =>
      _$$_ProvinsiFromJson(json);

  @override
  final int id;
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
    return 'Provinsi(id: $id, nama: $nama, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Provinsi &&
            const DeepCollectionEquality().equals(other.id, id) &&
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
      const DeepCollectionEquality().hash(nama),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_ProvinsiCopyWith<_$_Provinsi> get copyWith =>
      __$$_ProvinsiCopyWithImpl<_$_Provinsi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProvinsiToJson(
      this,
    );
  }
}

abstract class _Provinsi implements Provinsi {
  const factory _Provinsi(
      {required final int id,
      required final String nama,
      final DateTime? deletedAt,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Provinsi;

  factory _Provinsi.fromJson(Map<String, dynamic> json) = _$_Provinsi.fromJson;

  @override
  int get id;
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
  _$$_ProvinsiCopyWith<_$_Provinsi> get copyWith =>
      throw _privateConstructorUsedError;
}
