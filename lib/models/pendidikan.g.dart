// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pendidikan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pendidikan _$$_PendidikanFromJson(Map<String, dynamic> json) =>
    _$_Pendidikan(
      id: json['id'] as int,
      pendidikan: json['pendidikan'] as String,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$_PendidikanToJson(_$_Pendidikan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pendidikan': instance.pendidikan,
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
