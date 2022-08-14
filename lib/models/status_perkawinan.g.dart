// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_perkawinan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatusPerkawinan _$$_StatusPerkawinanFromJson(Map<String, dynamic> json) =>
    _$_StatusPerkawinan(
      id: json['id'] as int,
      statusPerkawinan: json['statusPerkawinan'] as String,
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

Map<String, dynamic> _$$_StatusPerkawinanToJson(_$_StatusPerkawinan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'statusPerkawinan': instance.statusPerkawinan,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
