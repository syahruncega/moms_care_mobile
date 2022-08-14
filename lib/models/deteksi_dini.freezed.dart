// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'deteksi_dini.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeteksiDini _$DeteksiDiniFromJson(Map<String, dynamic> json) {
  return _DeteksiDini.fromJson(json);
}

/// @nodoc
mixin _$DeteksiDini {
  String? get id => throw _privateConstructorUsedError;
  String get anggotaKeluargaId => throw _privateConstructorUsedError;
  String get bidanId => throw _privateConstructorUsedError;
  String get skor => throw _privateConstructorUsedError;
  String get kategori => throw _privateConstructorUsedError;
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
  $DeteksiDiniCopyWith<DeteksiDini> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeteksiDiniCopyWith<$Res> {
  factory $DeteksiDiniCopyWith(
          DeteksiDini value, $Res Function(DeteksiDini) then) =
      _$DeteksiDiniCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String anggotaKeluargaId,
      String bidanId,
      String skor,
      String kategori,
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
class _$DeteksiDiniCopyWithImpl<$Res> implements $DeteksiDiniCopyWith<$Res> {
  _$DeteksiDiniCopyWithImpl(this._value, this._then);

  final DeteksiDini _value;
  // ignore: unused_field
  final $Res Function(DeteksiDini) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? anggotaKeluargaId = freezed,
    Object? bidanId = freezed,
    Object? skor = freezed,
    Object? kategori = freezed,
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
      skor: skor == freezed
          ? _value.skor
          : skor // ignore: cast_nullable_to_non_nullable
              as String,
      kategori: kategori == freezed
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_DeteksiDiniCopyWith<$Res>
    implements $DeteksiDiniCopyWith<$Res> {
  factory _$$_DeteksiDiniCopyWith(
          _$_DeteksiDini value, $Res Function(_$_DeteksiDini) then) =
      __$$_DeteksiDiniCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String anggotaKeluargaId,
      String bidanId,
      String skor,
      String kategori,
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
class __$$_DeteksiDiniCopyWithImpl<$Res> extends _$DeteksiDiniCopyWithImpl<$Res>
    implements _$$_DeteksiDiniCopyWith<$Res> {
  __$$_DeteksiDiniCopyWithImpl(
      _$_DeteksiDini _value, $Res Function(_$_DeteksiDini) _then)
      : super(_value, (v) => _then(v as _$_DeteksiDini));

  @override
  _$_DeteksiDini get _value => super._value as _$_DeteksiDini;

  @override
  $Res call({
    Object? id = freezed,
    Object? anggotaKeluargaId = freezed,
    Object? bidanId = freezed,
    Object? skor = freezed,
    Object? kategori = freezed,
    Object? isValid = freezed,
    Object? tanggalValidasi = freezed,
    Object? alasanDitolak = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? bidan = freezed,
    Object? anggotaKeluarga = freezed,
  }) {
    return _then(_$_DeteksiDini(
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
      skor: skor == freezed
          ? _value.skor
          : skor // ignore: cast_nullable_to_non_nullable
              as String,
      kategori: kategori == freezed
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
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
class _$_DeteksiDini implements _DeteksiDini {
  const _$_DeteksiDini(
      {this.id,
      required this.anggotaKeluargaId,
      required this.bidanId,
      required this.skor,
      required this.kategori,
      required this.isValid,
      this.tanggalValidasi,
      this.alasanDitolak,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.bidan,
      this.anggotaKeluarga});

  factory _$_DeteksiDini.fromJson(Map<String, dynamic> json) =>
      _$$_DeteksiDiniFromJson(json);

  @override
  final String? id;
  @override
  final String anggotaKeluargaId;
  @override
  final String bidanId;
  @override
  final String skor;
  @override
  final String kategori;
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
    return 'DeteksiDini(id: $id, anggotaKeluargaId: $anggotaKeluargaId, bidanId: $bidanId, skor: $skor, kategori: $kategori, isValid: $isValid, tanggalValidasi: $tanggalValidasi, alasanDitolak: $alasanDitolak, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, bidan: $bidan, anggotaKeluarga: $anggotaKeluarga)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeteksiDini &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.anggotaKeluargaId, anggotaKeluargaId) &&
            const DeepCollectionEquality().equals(other.bidanId, bidanId) &&
            const DeepCollectionEquality().equals(other.skor, skor) &&
            const DeepCollectionEquality().equals(other.kategori, kategori) &&
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
      const DeepCollectionEquality().hash(skor),
      const DeepCollectionEquality().hash(kategori),
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
  _$$_DeteksiDiniCopyWith<_$_DeteksiDini> get copyWith =>
      __$$_DeteksiDiniCopyWithImpl<_$_DeteksiDini>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeteksiDiniToJson(
      this,
    );
  }
}

abstract class _DeteksiDini implements DeteksiDini {
  const factory _DeteksiDini(
      {final String? id,
      required final String anggotaKeluargaId,
      required final String bidanId,
      required final String skor,
      required final String kategori,
      required final String isValid,
      final DateTime? tanggalValidasi,
      final String? alasanDitolak,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? deletedAt,
      final Bidan? bidan,
      final AnggotaKeluarga? anggotaKeluarga}) = _$_DeteksiDini;

  factory _DeteksiDini.fromJson(Map<String, dynamic> json) =
      _$_DeteksiDini.fromJson;

  @override
  String? get id;
  @override
  String get anggotaKeluargaId;
  @override
  String get bidanId;
  @override
  String get skor;
  @override
  String get kategori;
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
  _$$_DeteksiDiniCopyWith<_$_DeteksiDini> get copyWith =>
      throw _privateConstructorUsedError;
}
