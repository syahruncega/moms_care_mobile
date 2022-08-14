// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perkembangan_anak.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PerkembanganAnak _$$_PerkembanganAnakFromJson(Map<String, dynamic> json) =>
    _$_PerkembanganAnak(
      id: json['id'] as String?,
      anggotaKeluargaId: json['anggotaKeluargaId'] as String,
      bidanId: json['bidanId'] as String,
      pemeriksaanKe: json['pemeriksaanKe'] as String,
      kategoriBadan: json['kategoriBadan'] as String,
      kategoriTekananDarah: json['kategoriTekananDarah'] as String,
      kategoriLenganAtas: json['kategoriLenganAtas'] as String,
      kategoriDenyutJantung: json['kategoriDenyutJantung'] as String,
      kategoriHemoglobinDarah: json['kategoriHemoglobinDarah'] as String,
      vaksinTetanusSebelumHamil: json['vaksinTetanusSebelumHamil'] as String,
      vaksinTetanusSesudahHamil: json['vaksinTetanusSesudahHamil'] as String,
      minumTablet: json['minumTablet'] as String,
      konseling: json['konseling'] as String,
      posisiJanin: json['posisiJanin'] as String,
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

Map<String, dynamic> _$$_PerkembanganAnakToJson(_$_PerkembanganAnak instance) =>
    <String, dynamic>{
      'id': instance.id,
      'anggotaKeluargaId': instance.anggotaKeluargaId,
      'bidanId': instance.bidanId,
      'pemeriksaanKe': instance.pemeriksaanKe,
      'kategoriBadan': instance.kategoriBadan,
      'kategoriTekananDarah': instance.kategoriTekananDarah,
      'kategoriLenganAtas': instance.kategoriLenganAtas,
      'kategoriDenyutJantung': instance.kategoriDenyutJantung,
      'kategoriHemoglobinDarah': instance.kategoriHemoglobinDarah,
      'vaksinTetanusSebelumHamil': instance.vaksinTetanusSebelumHamil,
      'vaksinTetanusSesudahHamil': instance.vaksinTetanusSesudahHamil,
      'minumTablet': instance.minumTablet,
      'konseling': instance.konseling,
      'posisiJanin': instance.posisiJanin,
      'isValid': instance.isValid,
      'tanggalValidasi': instance.tanggalValidasi?.toIso8601String(),
      'alasanDitolak': instance.alasanDitolak,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'bidan': instance.bidan,
      'anggotaKeluarga': instance.anggotaKeluarga,
    };
