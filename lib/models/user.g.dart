// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      nomorHp: json['nomorHp'] as String?,
      nik: json['nik'] as String?,
      role: json['role'] as String,
      isRemaja: json['isRemaja'] as String,
      status: json['status'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'],
      deletedAt: json['deletedAt'],
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'nomorHp': instance.nomorHp,
      'nik': instance.nik,
      'role': instance.role,
      'isRemaja': instance.isRemaja,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
    };
