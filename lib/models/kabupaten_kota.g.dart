// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kabupaten_kota.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KabupatenKota _$$_KabupatenKotaFromJson(Map<String, dynamic> json) =>
    _$_KabupatenKota(
      id: json['id'] as int,
      provinsiId: json['provinsiId'] as String,
      nama: json['nama'] as String,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_KabupatenKotaToJson(_$_KabupatenKota instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provinsiId': instance.provinsiId,
      'nama': instance.nama,
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
