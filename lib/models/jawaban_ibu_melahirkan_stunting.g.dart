// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jawaban_ibu_melahirkan_stunting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JawabanIbuMelahirkanStunting _$$_JawabanIbuMelahirkanStuntingFromJson(
        Map<String, dynamic> json) =>
    _$_JawabanIbuMelahirkanStunting(
      id: json['id'] as String?,
      deteksiIbuMelahirkanStuntingId:
          json['deteksiIbuMelahirkanStuntingId'] as String,
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

Map<String, dynamic> _$$_JawabanIbuMelahirkanStuntingToJson(
        _$_JawabanIbuMelahirkanStunting instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deteksiIbuMelahirkanStuntingId': instance.deteksiIbuMelahirkanStuntingId,
      'soalId': instance.soalId,
      'jawaban': instance.jawaban,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
