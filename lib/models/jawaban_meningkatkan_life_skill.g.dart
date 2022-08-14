// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jawaban_meningkatkan_life_skill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JawabanMeningkatkanLifeSkill _$$_JawabanMeningkatkanLifeSkillFromJson(
        Map<String, dynamic> json) =>
    _$_JawabanMeningkatkanLifeSkill(
      id: json['id'] as String?,
      randaKabilasaId: json['randaKabilasaId'] as String,
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

Map<String, dynamic> _$$_JawabanMeningkatkanLifeSkillToJson(
        _$_JawabanMeningkatkanLifeSkill instance) =>
    <String, dynamic>{
      'id': instance.id,
      'randaKabilasaId': instance.randaKabilasaId,
      'soalId': instance.soalId,
      'jawaban': instance.jawaban,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
