// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'randa_kabilasa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RandaKabilasa _$$_RandaKabilasaFromJson(Map<String, dynamic> json) =>
    _$_RandaKabilasa(
      id: json['id'] as String?,
      anggotaKeluargaId: json['anggotaKeluargaId'] as String,
      bidanId: json['bidanId'] as String,
      isMencegahMalnutrisi: json['isMencegahMalnutrisi'] as String,
      isMencegahPernikahanDini: json['isMencegahPernikahanDini'] as String,
      isMeningkatkanLifeSkill: json['isMeningkatkanLifeSkill'] as String,
      kategoriHb: json['kategoriHb'] as String,
      kategoriLingkarLenganAtas: json['kategoriLingkarLenganAtas'] as String,
      kategoriImt: json['kategoriImt'] as String,
      kategoriMencegahMalnutrisi: json['kategoriMencegahMalnutrisi'] as String,
      kategoriMeningkatkanLifeSkill:
          json['kategoriMeningkatkanLifeSkill'] as String,
      kategoriMencegahPernikahanDini:
          json['kategoriMencegahPernikahanDini'] as String,
      isValidMencegahMalnutrisi: json['isValidMencegahMalnutrisi'] as String,
      isValidMencegahPernikahanDini:
          json['isValidMencegahPernikahanDini'] as String,
      isValidMeningkatkanLifeSkill:
          json['isValidMeningkatkanLifeSkill'] as String,
      tanggalValidasi: json['tanggalValidasi'] == null
          ? null
          : DateTime.parse(json['tanggalValidasi'] as String),
      alasanDitolakMencegahMalnutrisi:
          json['alasanDitolakMencegahMalnutrisi'] as String?,
      alasanDitolakMencegahPernikahanDini:
          json['alasanDitolakMencegahPernikahanDini'] as String?,
      alasanDitolakMeningkatkanLifeSkill:
          json['alasanDitolakMeningkatkanLifeSkill'] as String?,
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
      mencegahMalnutrisi: json['mencegahMalnutrisi'] == null
          ? null
          : MencegahMalnutrisi.fromJson(
              json['mencegahMalnutrisi'] as Map<String, dynamic>),
      mencegahPernikahanDini: json['mencegahPernikahanDini'] == null
          ? null
          : MencegahPernikahanDini.fromJson(
              json['mencegahPernikahanDini'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RandaKabilasaToJson(_$_RandaKabilasa instance) =>
    <String, dynamic>{
      'id': instance.id,
      'anggotaKeluargaId': instance.anggotaKeluargaId,
      'bidanId': instance.bidanId,
      'isMencegahMalnutrisi': instance.isMencegahMalnutrisi,
      'isMencegahPernikahanDini': instance.isMencegahPernikahanDini,
      'isMeningkatkanLifeSkill': instance.isMeningkatkanLifeSkill,
      'kategoriHb': instance.kategoriHb,
      'kategoriLingkarLenganAtas': instance.kategoriLingkarLenganAtas,
      'kategoriImt': instance.kategoriImt,
      'kategoriMencegahMalnutrisi': instance.kategoriMencegahMalnutrisi,
      'kategoriMeningkatkanLifeSkill': instance.kategoriMeningkatkanLifeSkill,
      'kategoriMencegahPernikahanDini': instance.kategoriMencegahPernikahanDini,
      'isValidMencegahMalnutrisi': instance.isValidMencegahMalnutrisi,
      'isValidMencegahPernikahanDini': instance.isValidMencegahPernikahanDini,
      'isValidMeningkatkanLifeSkill': instance.isValidMeningkatkanLifeSkill,
      'tanggalValidasi': instance.tanggalValidasi?.toIso8601String(),
      'alasanDitolakMencegahMalnutrisi':
          instance.alasanDitolakMencegahMalnutrisi,
      'alasanDitolakMencegahPernikahanDini':
          instance.alasanDitolakMencegahPernikahanDini,
      'alasanDitolakMeningkatkanLifeSkill':
          instance.alasanDitolakMeningkatkanLifeSkill,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'bidan': instance.bidan,
      'anggotaKeluarga': instance.anggotaKeluarga,
      'mencegahMalnutrisi': instance.mencegahMalnutrisi,
      'mencegahPernikahanDini': instance.mencegahPernikahanDini,
    };
