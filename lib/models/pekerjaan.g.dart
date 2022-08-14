// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pekerjaan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pekerjaan _$$_PekerjaanFromJson(Map<String, dynamic> json) => _$_Pekerjaan(
      id: json['id'] as int,
      pekerjaan: json['pekerjaan'] as String,
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

Map<String, dynamic> _$$_PekerjaanToJson(_$_Pekerjaan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pekerjaan': instance.pekerjaan,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
