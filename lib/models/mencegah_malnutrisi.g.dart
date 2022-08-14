// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mencegah_malnutrisi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MencegahMalnutrisi _$$_MencegahMalnutrisiFromJson(
        Map<String, dynamic> json) =>
    _$_MencegahMalnutrisi(
      id: json['id'] as String?,
      randaKabilasaId: json['randaKabilasaId'] as String,
      lingkarLenganAtas: json['lingkarLenganAtas'] as String,
      tinggiBadan: json['tinggiBadan'] as String,
      beratBadan: json['beratBadan'] as String,
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

Map<String, dynamic> _$$_MencegahMalnutrisiToJson(
        _$_MencegahMalnutrisi instance) =>
    <String, dynamic>{
      'id': instance.id,
      'randaKabilasaId': instance.randaKabilasaId,
      'lingkarLenganAtas': instance.lingkarLenganAtas,
      'tinggiBadan': instance.tinggiBadan,
      'beratBadan': instance.beratBadan,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
