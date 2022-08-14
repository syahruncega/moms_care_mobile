// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lokasi_tugas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LokasiTugas _$$_LokasiTugasFromJson(Map<String, dynamic> json) =>
    _$_LokasiTugas(
      id: json['id'] as int?,
      jenisProfil: json['jenisProfil'] as String,
      profilId: json['profilId'] as String,
      desaKelurahanId: json['desaKelurahanId'] as String,
      kecamatanId: json['kecamatanId'] as String,
      kabupatenKotaId: json['kabupatenKotaId'] as String,
      provinsiId: json['provinsiId'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      desaKelurahan: json['desaKelurahan'] == null
          ? null
          : DesaKelurahan.fromJson(
              json['desaKelurahan'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LokasiTugasToJson(_$_LokasiTugas instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jenisProfil': instance.jenisProfil,
      'profilId': instance.profilId,
      'desaKelurahanId': instance.desaKelurahanId,
      'kecamatanId': instance.kecamatanId,
      'kabupatenKotaId': instance.kabupatenKotaId,
      'provinsiId': instance.provinsiId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'desaKelurahan': instance.desaKelurahan,
    };
