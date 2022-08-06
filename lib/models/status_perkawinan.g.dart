// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_perkawinan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatusPerkawinan _$$_StatusPerkawinanFromJson(Map<String, dynamic> json) =>
    _$_StatusPerkawinan(
      id: json['id'] as int,
      statusPerkawinan: json['statusPerkawinan'] as String,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$_StatusPerkawinanToJson(_$_StatusPerkawinan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'statusPerkawinan': instance.statusPerkawinan,
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
