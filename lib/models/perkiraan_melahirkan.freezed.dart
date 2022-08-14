// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'perkiraan_melahirkan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PerkiraanMelahirkan _$PerkiraanMelahirkanFromJson(Map<String, dynamic> json) {
  return _PerkiraanMelahirkan.fromJson(json);
}

/// @nodoc
mixin _$PerkiraanMelahirkan {
  String? get id => throw _privateConstructorUsedError;
  String get anggotaKeluargaId => throw _privateConstructorUsedError;
  String get bidanId => throw _privateConstructorUsedError;
  DateTime get tanggalHaidTerakhir => throw _privateConstructorUsedError;
  DateTime get tanggalPerkiraanLahir => throw _privateConstructorUsedError;
  String get isValid => throw _privateConstructorUsedError;
  DateTime? get tanggalValidasi => throw _privateConstructorUsedError;
  String? get alasanDitolak => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  Bidan? get bidan => throw _privateConstructorUsedError;
  AnggotaKeluarga? get anggotaKeluarga => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerkiraanMelahirkanCopyWith<PerkiraanMelahirkan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerkiraanMelahirkanCopyWith<$Res> {
  factory $PerkiraanMelahirkanCopyWith(
          PerkiraanMelahirkan value, $Res Function(PerkiraanMelahirkan) then) =
      _$PerkiraanMelahirkanCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String anggotaKeluargaId,
      String bidanId,
      DateTime tanggalHaidTerakhir,
      DateTime tanggalPerkiraanLahir,
      String isValid,
      DateTime? tanggalValidasi,
      String? alasanDitolak,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt,
      Bidan? bidan,
      AnggotaKeluarga? anggotaKeluarga});

  $BidanCopyWith<$Res>? get bidan;
  $AnggotaKeluargaCopyWith<$Res>? get anggotaKeluarga;
}

/// @nodoc
class _$PerkiraanMelahirkanCopyWithImpl<$Res>
    implements $PerkiraanMelahirkanCopyWith<$Res> {
  _$PerkiraanMelahirkanCopyWithImpl(this._value, this._then);

  final PerkiraanMelahirkan _value;
  // ignore: unused_field
  final $Res Function(PerkiraanMelahirkan) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? anggotaKeluargaId = freezed,
    Object? bidanId = freezed,
    Object? tanggalHaidTerakhir = freezed,
    Object? tanggalPerkiraanLahir = freezed,
    Object? isValid = freezed,
    Object? tanggalValidasi = freezed,
    Object? alasanDitolak = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? bidan = freezed,
    Object? anggotaKeluarga = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      anggotaKeluargaId: anggotaKeluargaId == freezed
          ? _value.anggotaKeluargaId
          : anggotaKeluargaId // ignore: cast_nullable_to_non_nullable
              as String,
      bidanId: bidanId == freezed
          ? _value.bidanId
          : bidanId // ignore: cast_nullable_to_non_nullable
              as String,
      tanggalHaidTerakhir: tanggalHaidTerakhir == freezed
          ? _value.tanggalHaidTerakhir
          : tanggalHaidTerakhir // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tanggalPerkiraanLahir: tanggalPerkiraanLahir == freezed
          ? _value.tanggalPerkiraanLahir
          : tanggalPerkiraanLahir // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isValid: isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as String,
      tanggalValidasi: tanggalValidasi == freezed
          ? _value.tanggalValidasi
          : tanggalValidasi // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      alasanDitolak: alasanDitolak == freezed
          ? _value.alasanDitolak
          : alasanDitolak // ignore: cast_nullable_to_non_nullable
              as String?,
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
      bidan: bidan == freezed
          ? _value.bidan
          : bidan // ignore: cast_nullable_to_non_nullable
              as Bidan?,
      anggotaKeluarga: anggotaKeluarga == freezed
          ? _value.anggotaKeluarga
          : anggotaKeluarga // ignore: cast_nullable_to_non_nullable
              as AnggotaKeluarga?,
    ));
  }

  @override
  $BidanCopyWith<$Res>? get bidan {
    if (_value.bidan == null) {
      return null;
    }

    return $BidanCopyWith<$Res>(_value.bidan!, (value) {
      return _then(_value.copyWith(bidan: value));
    });
  }

  @override
  $AnggotaKeluargaCopyWith<$Res>? get anggotaKeluarga {
    if (_value.anggotaKeluarga == null) {
      return null;
    }

    return $AnggotaKeluargaCopyWith<$Res>(_value.anggotaKeluarga!, (value) {
      return _then(_value.copyWith(anggotaKeluarga: value));
    });
  }
}

/// @nodoc
abstract class _$$_PerkiraanMelahirkanCopyWith<$Res>
    implements $PerkiraanMelahirkanCopyWith<$Res> {
  factory _$$_PerkiraanMelahirkanCopyWith(_$_PerkiraanMelahirkan value,
          $Res Function(_$_PerkiraanMelahirkan) then) =
      __$$_PerkiraanMelahirkanCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String anggotaKeluargaId,
      String bidanId,
      DateTime tanggalHaidTerakhir,
      DateTime tanggalPerkiraanLahir,
      String isValid,
      DateTime? tanggalValidasi,
      String? alasanDitolak,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt,
      Bidan? bidan,
      AnggotaKeluarga? anggotaKeluarga});

  @override
  $BidanCopyWith<$Res>? get bidan;
  @override
  $AnggotaKeluargaCopyWith<$Res>? get anggotaKeluarga;
}

/// @nodoc
class __$$_PerkiraanMelahirkanCopyWithImpl<$Res>
    extends _$PerkiraanMelahirkanCopyWithImpl<$Res>
    implements _$$_PerkiraanMelahirkanCopyWith<$Res> {
  __$$_PerkiraanMelahirkanCopyWithImpl(_$_PerkiraanMelahirkan _value,
      $Res Function(_$_PerkiraanMelahirkan) _then)
      : super(_value, (v) => _then(v as _$_PerkiraanMelahirkan));

  @override
  _$_PerkiraanMelahirkan get _value => super._value as _$_PerkiraanMelahirkan;

  @override
  $Res call({
    Object? id = freezed,
    Object? anggotaKeluargaId = freezed,
    Object? bidanId = freezed,
    Object? tanggalHaidTerakhir = freezed,
    Object? tanggalPerkiraanLahir = freezed,
    Object? isValid = freezed,
    Object? tanggalValidasi = freezed,
    Object? alasanDitolak = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? bidan = freezed,
    Object? anggotaKeluarga = freezed,
  }) {
    return _then(_$_PerkiraanMelahirkan(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      anggotaKeluargaId: anggotaKeluargaId == freezed
          ? _value.anggotaKeluargaId
          : anggotaKeluargaId // ignore: cast_nullable_to_non_nullable
              as String,
      bidanId: bidanId == freezed
          ? _value.bidanId
          : bidanId // ignore: cast_nullable_to_non_nullable
              as String,
      tanggalHaidTerakhir: tanggalHaidTerakhir == freezed
          ? _value.tanggalHaidTerakhir
          : tanggalHaidTerakhir // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tanggalPerkiraanLahir: tanggalPerkiraanLahir == freezed
          ? _value.tanggalPerkiraanLahir
          : tanggalPerkiraanLahir // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isValid: isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as String,
      tanggalValidasi: tanggalValidasi == freezed
          ? _value.tanggalValidasi
          : tanggalValidasi // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      alasanDitolak: alasanDitolak == freezed
          ? _value.alasanDitolak
          : alasanDitolak // ignore: cast_nullable_to_non_nullable
              as String?,
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
      bidan: bidan == freezed
          ? _value.bidan
          : bidan // ignore: cast_nullable_to_non_nullable
              as Bidan?,
      anggotaKeluarga: anggotaKeluarga == freezed
          ? _value.anggotaKeluarga
          : anggotaKeluarga // ignore: cast_nullable_to_non_nullable
              as AnggotaKeluarga?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PerkiraanMelahirkan implements _PerkiraanMelahirkan {
  const _$_PerkiraanMelahirkan(
      {this.id,
      required this.anggotaKeluargaId,
      required this.bidanId,
      required this.tanggalHaidTerakhir,
      required this.tanggalPerkiraanLahir,
      required this.isValid,
      this.tanggalValidasi,
      this.alasanDitolak,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.bidan,
      this.anggotaKeluarga});

  factory _$_PerkiraanMelahirkan.fromJson(Map<String, dynamic> json) =>
      _$$_PerkiraanMelahirkanFromJson(json);

  @override
  final String? id;
  @override
  final String anggotaKeluargaId;
  @override
  final String bidanId;
  @override
  final DateTime tanggalHaidTerakhir;
  @override
  final DateTime tanggalPerkiraanLahir;
  @override
  final String isValid;
  @override
  final DateTime? tanggalValidasi;
  @override
  final String? alasanDitolak;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;
  @override
  final Bidan? bidan;
  @override
  final AnggotaKeluarga? anggotaKeluarga;

  @override
  String toString() {
    return 'PerkiraanMelahirkan(id: $id, anggotaKeluargaId: $anggotaKeluargaId, bidanId: $bidanId, tanggalHaidTerakhir: $tanggalHaidTerakhir, tanggalPerkiraanLahir: $tanggalPerkiraanLahir, isValid: $isValid, tanggalValidasi: $tanggalValidasi, alasanDitolak: $alasanDitolak, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, bidan: $bidan, anggotaKeluarga: $anggotaKeluarga)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PerkiraanMelahirkan &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.anggotaKeluargaId, anggotaKeluargaId) &&
            const DeepCollectionEquality().equals(other.bidanId, bidanId) &&
            const DeepCollectionEquality()
                .equals(other.tanggalHaidTerakhir, tanggalHaidTerakhir) &&
            const DeepCollectionEquality()
                .equals(other.tanggalPerkiraanLahir, tanggalPerkiraanLahir) &&
            const DeepCollectionEquality().equals(other.isValid, isValid) &&
            const DeepCollectionEquality()
                .equals(other.tanggalValidasi, tanggalValidasi) &&
            const DeepCollectionEquality()
                .equals(other.alasanDitolak, alasanDitolak) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality().equals(other.bidan, bidan) &&
            const DeepCollectionEquality()
                .equals(other.anggotaKeluarga, anggotaKeluarga));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(anggotaKeluargaId),
      const DeepCollectionEquality().hash(bidanId),
      const DeepCollectionEquality().hash(tanggalHaidTerakhir),
      const DeepCollectionEquality().hash(tanggalPerkiraanLahir),
      const DeepCollectionEquality().hash(isValid),
      const DeepCollectionEquality().hash(tanggalValidasi),
      const DeepCollectionEquality().hash(alasanDitolak),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(bidan),
      const DeepCollectionEquality().hash(anggotaKeluarga));

  @JsonKey(ignore: true)
  @override
  _$$_PerkiraanMelahirkanCopyWith<_$_PerkiraanMelahirkan> get copyWith =>
      __$$_PerkiraanMelahirkanCopyWithImpl<_$_PerkiraanMelahirkan>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PerkiraanMelahirkanToJson(
      this,
    );
  }
}

abstract class _PerkiraanMelahirkan implements PerkiraanMelahirkan {
  const factory _PerkiraanMelahirkan(
      {final String? id,
      required final String anggotaKeluargaId,
      required final String bidanId,
      required final DateTime tanggalHaidTerakhir,
      required final DateTime tanggalPerkiraanLahir,
      required final String isValid,
      final DateTime? tanggalValidasi,
      final String? alasanDitolak,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? deletedAt,
      final Bidan? bidan,
      final AnggotaKeluarga? anggotaKeluarga}) = _$_PerkiraanMelahirkan;

  factory _PerkiraanMelahirkan.fromJson(Map<String, dynamic> json) =
      _$_PerkiraanMelahirkan.fromJson;

  @override
  String? get id;
  @override
  String get anggotaKeluargaId;
  @override
  String get bidanId;
  @override
  DateTime get tanggalHaidTerakhir;
  @override
  DateTime get tanggalPerkiraanLahir;
  @override
  String get isValid;
  @override
  DateTime? get tanggalValidasi;
  @override
  String? get alasanDitolak;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  Bidan? get bidan;
  @override
  AnggotaKeluarga? get anggotaKeluarga;
  @override
  @JsonKey(ignore: true)
  _$$_PerkiraanMelahirkanCopyWith<_$_PerkiraanMelahirkan> get copyWith =>
      throw _privateConstructorUsedError;
}
