// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soal_ibu_melahirkan_stunting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SoalIbuMelahirkanStunting _$$_SoalIbuMelahirkanStuntingFromJson(
        Map<String, dynamic> json) =>
    _$_SoalIbuMelahirkanStunting(
      id: json['id'] as int?,
      urutan: json['urutan'] as String,
      soal: json['soal'] as String,
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

Map<String, dynamic> _$$_SoalIbuMelahirkanStuntingToJson(
        _$_SoalIbuMelahirkanStunting instance) =>
    <String, dynamic>{
      'id': instance.id,
      'urutan': instance.urutan,
      'soal': instance.soal,
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
