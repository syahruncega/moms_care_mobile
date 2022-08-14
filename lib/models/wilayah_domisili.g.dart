// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wilayah_domisili.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WilayahDomisili _$$_WilayahDomisiliFromJson(Map<String, dynamic> json) =>
    _$_WilayahDomisili(
      id: json['id'] as int?,
      anggotaKeluargaId: json['anggotaKeluargaId'] as String,
      alamat: json['alamat'] as String,
      desaKelurahanId: json['desaKelurahanId'] as String,
      kecamatanId: json['kecamatanId'] as String,
      kabupatenKotaId: json['kabupatenKotaId'] as String,
      provinsiId: json['provinsiId'] as String,
      fileKetDomisili: json['fileKetDomisili'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$_WilayahDomisiliToJson(_$_WilayahDomisili instance) =>
    <String, dynamic>{
      'id': instance.id,
      'anggotaKeluargaId': instance.anggotaKeluargaId,
      'alamat': instance.alamat,
      'desaKelurahanId': instance.desaKelurahanId,
      'kecamatanId': instance.kecamatanId,
      'kabupatenKotaId': instance.kabupatenKotaId,
      'provinsiId': instance.provinsiId,
      'fileKetDomisili': instance.fileKetDomisili,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
