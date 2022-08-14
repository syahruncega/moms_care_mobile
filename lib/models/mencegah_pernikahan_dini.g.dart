// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mencegah_pernikahan_dini.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MencegahPernikahanDini _$$_MencegahPernikahanDiniFromJson(
        Map<String, dynamic> json) =>
    _$_MencegahPernikahanDini(
      id: json['id'] as String?,
      randaKabilasaId: json['randaKabilasaId'] as String,
      jawaban1: json['jawaban1'] as String,
      jawaban2: json['jawaban2'] as String,
      jawaban3: json['jawaban3'] as String,
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

Map<String, dynamic> _$$_MencegahPernikahanDiniToJson(
        _$_MencegahPernikahanDini instance) =>
    <String, dynamic>{
      'id': instance.id,
      'randaKabilasaId': instance.randaKabilasaId,
      'jawaban1': instance.jawaban1,
      'jawaban2': instance.jawaban2,
      'jawaban3': instance.jawaban3,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
