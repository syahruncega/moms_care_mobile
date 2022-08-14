// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agama.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Agama _$$_AgamaFromJson(Map<String, dynamic> json) => _$_Agama(
      id: json['id'] as int,
      agama: json['agama'] as String,
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

Map<String, dynamic> _$$_AgamaToJson(_$_Agama instance) => <String, dynamic>{
      'id': instance.id,
      'agama': instance.agama,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
