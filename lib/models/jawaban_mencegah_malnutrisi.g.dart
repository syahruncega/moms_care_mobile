// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jawaban_mencegah_malnutrisi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JawabanMencegahMalnutrisi _$$_JawabanMencegahMalnutrisiFromJson(
        Map<String, dynamic> json) =>
    _$_JawabanMencegahMalnutrisi(
      id: json['id'] as String?,
      mencegahMalnutrisiId: json['mencegahMalnutrisiId'] as String,
      soalId: json['soalId'] as String,
      jawaban: json['jawaban'] as String,
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

Map<String, dynamic> _$$_JawabanMencegahMalnutrisiToJson(
        _$_JawabanMencegahMalnutrisi instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mencegahMalnutrisiId': instance.mencegahMalnutrisiId,
      'soalId': instance.soalId,
      'jawaban': instance.jawaban,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
