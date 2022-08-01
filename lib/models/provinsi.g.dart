// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provinsi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Provinsi _$$_ProvinsiFromJson(Map<String, dynamic> json) => _$_Provinsi(
      id: json['id'] as int,
      nama: json['nama'] as String,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_ProvinsiToJson(_$_Provinsi instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
