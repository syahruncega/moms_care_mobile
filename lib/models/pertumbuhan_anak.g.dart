// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pertumbuhan_anak.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PertumbuhanAnak _$$_PertumbuhanAnakFromJson(Map<String, dynamic> json) =>
    _$_PertumbuhanAnak(
      id: json['id'] as String?,
      anggotaKeluargaId: json['anggotaKeluargaId'] as String,
      bidanId: json['bidanId'] as String,
      beratBadan: json['beratBadan'] as String,
      zscore: json['zscore'] as String,
      hasil: json['hasil'] as String,
      isValid: json['isValid'] as String,
      tanggalValidasi: json['tanggalValidasi'] == null
          ? null
          : DateTime.parse(json['tanggalValidasi'] as String),
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
      bidan: json['bidan'] == null
          ? null
          : Bidan.fromJson(json['bidan'] as Map<String, dynamic>),
      anggotaKeluarga: json['anggotaKeluarga'] == null
          ? null
          : AnggotaKeluarga.fromJson(
              json['anggotaKeluarga'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PertumbuhanAnakToJson(_$_PertumbuhanAnak instance) =>
    <String, dynamic>{
      'id': instance.id,
      'anggotaKeluargaId': instance.anggotaKeluargaId,
      'bidanId': instance.bidanId,
      'beratBadan': instance.beratBadan,
      'zscore': instance.zscore,
      'hasil': instance.hasil,
      'isValid': instance.isValid,
      'tanggalValidasi': instance.tanggalValidasi?.toIso8601String(),
      'alasanDitolak': instance.alasanDitolak,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'bidan': instance.bidan,
      'anggotaKeluarga': instance.anggotaKeluarga,
    };
