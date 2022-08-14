// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soal_mencegah_malnutrisi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SoalMencegahMalnutrisi _$$_SoalMencegahMalnutrisiFromJson(
        Map<String, dynamic> json) =>
    _$_SoalMencegahMalnutrisi(
      id: json['id'] as int?,
      urutan: json['urutan'] as String,
      soal: json['soal'] as String,
      skorYa: json['skorYa'] as String,
      skorTidak: json['skorTidak'] as String,
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

Map<String, dynamic> _$$_SoalMencegahMalnutrisiToJson(
        _$_SoalMencegahMalnutrisi instance) =>
    <String, dynamic>{
      'id': instance.id,
      'urutan': instance.urutan,
      'soal': instance.soal,
      'skorYa': instance.skorYa,
      'skorTidak': instance.skorTidak,
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
