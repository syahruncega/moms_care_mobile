// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pekerjaan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pekerjaan _$$_PekerjaanFromJson(Map<String, dynamic> json) => _$_Pekerjaan(
      id: json['id'] as int,
      pekerjaan: json['pekerjaan'] as String,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$_PekerjaanToJson(_$_Pekerjaan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pekerjaan': instance.pekerjaan,
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
