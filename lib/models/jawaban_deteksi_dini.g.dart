// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jawaban_deteksi_dini.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JawabanDeteksiDini _$$_JawabanDeteksiDiniFromJson(
        Map<String, dynamic> json) =>
    _$_JawabanDeteksiDini(
      id: json['id'] as int?,
      deteksiDiniId: json['deteksiDiniId'] as String,
      soalId: json['soalId'] as String,
      jawaban: json['jawaban'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deteletdAt: json['deteletdAt'] == null
          ? null
          : DateTime.parse(json['deteletdAt'] as String),
    );

Map<String, dynamic> _$$_JawabanDeteksiDiniToJson(
        _$_JawabanDeteksiDini instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deteksiDiniId': instance.deteksiDiniId,
      'soalId': instance.soalId,
      'jawaban': instance.jawaban,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deteletdAt': instance.deteletdAt?.toIso8601String(),
    };
