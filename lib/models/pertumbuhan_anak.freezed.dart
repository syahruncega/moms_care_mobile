// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pertumbuhan_anak.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PertumbuhanAnak _$PertumbuhanAnakFromJson(Map<String, dynamic> json) {
  return _PertumbuhanAnak.fromJson(json);
}

/// @nodoc
mixin _$PertumbuhanAnak {
  String? get id => throw _privateConstructorUsedError;
  String get anggotaKeluargaId => throw _privateConstructorUsedError;
  String get bidanId => throw _privateConstructorUsedError;
  String get beratBadan => throw _privateConstructorUsedError;
  String get zscore => throw _privateConstructorUsedError;
  String get hasil => throw _privateConstructorUsedError;
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
  $PertumbuhanAnakCopyWith<PertumbuhanAnak> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PertumbuhanAnakCopyWith<$Res> {
  factory $PertumbuhanAnakCopyWith(
          PertumbuhanAnak value, $Res Function(PertumbuhanAnak) then) =
      _$PertumbuhanAnakCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String anggotaKeluargaId,
      String bidanId,
      String beratBadan,
      String zscore,
      String hasil,
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
class _$PertumbuhanAnakCopyWithImpl<$Res>
    implements $PertumbuhanAnakCopyWith<$Res> {
  _$PertumbuhanAnakCopyWithImpl(this._value, this._then);

  final PertumbuhanAnak _value;
  // ignore: unused_field
  final $Res Function(PertumbuhanAnak) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? anggotaKeluargaId = freezed,
    Object? bidanId = freezed,
    Object? beratBadan = freezed,
    Object? zscore = freezed,
    Object? hasil = freezed,
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
      beratBadan: beratBadan == freezed
          ? _value.beratBadan
          : beratBadan // ignore: cast_nullable_to_non_nullable
              as String,
      zscore: zscore == freezed
          ? _value.zscore
          : zscore // ignore: cast_nullable_to_non_nullable
              as String,
      hasil: hasil == freezed
          ? _value.hasil
          : hasil // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_PertumbuhanAnakCopyWith<$Res>
    implements $PertumbuhanAnakCopyWith<$Res> {
  factory _$$_PertumbuhanAnakCopyWith(
          _$_PertumbuhanAnak value, $Res Function(_$_PertumbuhanAnak) then) =
      __$$_PertumbuhanAnakCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String anggotaKeluargaId,
      String bidanId,
      String beratBadan,
      String zscore,
      String hasil,
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
class __$$_PertumbuhanAnakCopyWithImpl<$Res>
    extends _$PertumbuhanAnakCopyWithImpl<$Res>
    implements _$$_PertumbuhanAnakCopyWith<$Res> {
  __$$_PertumbuhanAnakCopyWithImpl(
      _$_PertumbuhanAnak _value, $Res Function(_$_PertumbuhanAnak) _then)
      : super(_value, (v) => _then(v as _$_PertumbuhanAnak));

  @override
  _$_PertumbuhanAnak get _value => super._value as _$_PertumbuhanAnak;

  @override
  $Res call({
    Object? id = freezed,
    Object? anggotaKeluargaId = freezed,
    Object? bidanId = freezed,
    Object? beratBadan = freezed,
    Object? zscore = freezed,
    Object? hasil = freezed,
    Object? isValid = freezed,
    Object? tanggalValidasi = freezed,
    Object? alasanDitolak = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? bidan = freezed,
    Object? anggotaKeluarga = freezed,
  }) {
    return _then(_$_PertumbuhanAnak(
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
      beratBadan: beratBadan == freezed
          ? _value.beratBadan
          : beratBadan // ignore: cast_nullable_to_non_nullable
              as String,
      zscore: zscore == freezed
          ? _value.zscore
          : zscore // ignore: cast_nullable_to_non_nullable
              as String,
      hasil: hasil == freezed
          ? _value.hasil
          : hasil // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_PertumbuhanAnak implements _PertumbuhanAnak {
  const _$_PertumbuhanAnak(
      {this.id,
      required this.anggotaKeluargaId,
      required this.bidanId,
      required this.beratBadan,
      required this.zscore,
      required this.hasil,
      required this.isValid,
      this.tanggalValidasi,
      this.alasanDitolak,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.bidan,
      this.anggotaKeluarga});

  factory _$_PertumbuhanAnak.fromJson(Map<String, dynamic> json) =>
      _$$_PertumbuhanAnakFromJson(json);

  @override
  final String? id;
  @override
  final String anggotaKeluargaId;
  @override
  final String bidanId;
  @override
  final String beratBadan;
  @override
  final String zscore;
  @override
  final String hasil;
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
    return 'PertumbuhanAnak(id: $id, anggotaKeluargaId: $anggotaKeluargaId, bidanId: $bidanId, beratBadan: $beratBadan, zscore: $zscore, hasil: $hasil, isValid: $isValid, tanggalValidasi: $tanggalValidasi, alasanDitolak: $alasanDitolak, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, bidan: $bidan, anggotaKeluarga: $anggotaKeluarga)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PertumbuhanAnak &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.anggotaKeluargaId, anggotaKeluargaId) &&
            const DeepCollectionEquality().equals(other.bidanId, bidanId) &&
            const DeepCollectionEquality()
                .equals(other.beratBadan, beratBadan) &&
            const DeepCollectionEquality().equals(other.zscore, zscore) &&
            const DeepCollectionEquality().equals(other.hasil, hasil) &&
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
      const DeepCollectionEquality().hash(beratBadan),
      const DeepCollectionEquality().hash(zscore),
      const DeepCollectionEquality().hash(hasil),
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
  _$$_PertumbuhanAnakCopyWith<_$_PertumbuhanAnak> get copyWith =>
      __$$_PertumbuhanAnakCopyWithImpl<_$_PertumbuhanAnak>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PertumbuhanAnakToJson(
      this,
    );
  }
}

abstract class _PertumbuhanAnak implements PertumbuhanAnak {
  const factory _PertumbuhanAnak(
      {final String? id,
      required final String anggotaKeluargaId,
      required final String bidanId,
      required final String beratBadan,
      required final String zscore,
      required final String hasil,
      required final String isValid,
      final DateTime? tanggalValidasi,
      final String? alasanDitolak,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? deletedAt,
      final Bidan? bidan,
      final AnggotaKeluarga? anggotaKeluarga}) = _$_PertumbuhanAnak;

  factory _PertumbuhanAnak.fromJson(Map<String, dynamic> json) =
      _$_PertumbuhanAnak.fromJson;

  @override
  String? get id;
  @override
  String get anggotaKeluargaId;
  @override
  String get bidanId;
  @override
  String get beratBadan;
  @override
  String get zscore;
  @override
  String get hasil;
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
  _$$_PertumbuhanAnakCopyWith<_$_PertumbuhanAnak> get copyWith =>
      throw _privateConstructorUsedError;
}
