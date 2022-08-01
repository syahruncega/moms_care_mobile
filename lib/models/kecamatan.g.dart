// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kecamatan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Kecamatan _$$_KecamatanFromJson(Map<String, dynamic> json) => _$_Kecamatan(
      id: json['id'] as int,
      kabupatenKotaId: json['kabupatenKotaId'] as String,
      nama: json['nama'] as String,
      polygon: json['polygon'],
      warnaPolygon: json['warnaPolygon'],
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      koordinatPolygon: json['koordinatPolygon'],
    );

Map<String, dynamic> _$$_KecamatanToJson(_$_Kecamatan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kabupatenKotaId': instance.kabupatenKotaId,
      'nama': instance.nama,
      'polygon': instance.polygon,
      'warnaPolygon': instance.warnaPolygon,
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'koordinatPolygon': instance.koordinatPolygon,
    };
