// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kartu_keluarga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KartuKeluarga _$$_KartuKeluargaFromJson(Map<String, dynamic> json) =>
    _$_KartuKeluarga(
      id: json['id'] as String,
      bidanId: json['bidanId'] as String,
      nomorKk: json['nomorKk'] as String,
      namaKepalaKeluarga: json['namaKepalaKeluarga'] as String,
      alamat: json['alamat'] as String,
      rt: json['rt'] as String,
      rw: json['rw'] as String,
      kodePos: json['kodePos'] as String,
      desaKelurahanId: json['desaKelurahanId'] as String,
      kecamatanId: json['kecamatanId'] as String,
      kabupatenKotaId: json['kabupatenKotaId'] as String,
      provinsiId: json['provinsiId'] as String,
      fileKk: json['fileKk'] as String?,
      isValid: json['isValid'] as String,
      tanggalValidasi: DateTime.parse(json['tanggalValidasi'] as String),
      alasanDitolak: json['alasanDitolak'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      provinsi: json['provinsi'] == null
          ? null
          : Provinsi.fromJson(json['provinsi'] as Map<String, dynamic>),
      kabupatenKota: json['kabupatenKota'] == null
          ? null
          : KabupatenKota.fromJson(
              json['kabupatenKota'] as Map<String, dynamic>),
      kecamatan: json['kecamatan'] == null
          ? null
          : Kecamatan.fromJson(json['kecamatan'] as Map<String, dynamic>),
      desaKelurahan: json['desaKelurahan'] == null
          ? null
          : DesaKelurahan.fromJson(
              json['desaKelurahan'] as Map<String, dynamic>),
      bidan: json['bidan'] == null
          ? null
          : Bidan.fromJson(json['bidan'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_KartuKeluargaToJson(_$_KartuKeluarga instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bidanId': instance.bidanId,
      'nomorKk': instance.nomorKk,
      'namaKepalaKeluarga': instance.namaKepalaKeluarga,
      'alamat': instance.alamat,
      'rt': instance.rt,
      'rw': instance.rw,
      'kodePos': instance.kodePos,
      'desaKelurahanId': instance.desaKelurahanId,
      'kecamatanId': instance.kecamatanId,
      'kabupatenKotaId': instance.kabupatenKotaId,
      'provinsiId': instance.provinsiId,
      'fileKk': instance.fileKk,
      'isValid': instance.isValid,
      'tanggalValidasi': instance.tanggalValidasi.toIso8601String(),
      'alasanDitolak': instance.alasanDitolak,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'provinsi': instance.provinsi,
      'kabupatenKota': instance.kabupatenKota,
      'kecamatan': instance.kecamatan,
      'desaKelurahan': instance.desaKelurahan,
      'bidan': instance.bidan,
    };
