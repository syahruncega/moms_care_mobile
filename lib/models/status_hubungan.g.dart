// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_hubungan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatusHubungan _$$_StatusHubunganFromJson(Map<String, dynamic> json) =>
    _$_StatusHubungan(
      id: json['id'] as int,
      statusHubungan: json['statusHubungan'] as String,
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

Map<String, dynamic> _$$_StatusHubunganToJson(_$_StatusHubungan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'statusHubungan': instance.statusHubungan,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
