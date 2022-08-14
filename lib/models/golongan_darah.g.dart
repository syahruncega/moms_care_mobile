// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'golongan_darah.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GolonganDarah _$$_GolonganDarahFromJson(Map<String, dynamic> json) =>
    _$_GolonganDarah(
      id: json['id'] as int,
      golonganDarah: json['golonganDarah'] as String,
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

Map<String, dynamic> _$$_GolonganDarahToJson(_$_GolonganDarah instance) =>
    <String, dynamic>{
      'id': instance.id,
      'golonganDarah': instance.golonganDarah,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
