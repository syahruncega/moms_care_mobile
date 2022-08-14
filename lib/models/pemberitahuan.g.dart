// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pemberitahuan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pemberitahuan _$$_PemberitahuanFromJson(Map<String, dynamic> json) =>
    _$_Pemberitahuan(
      id: json['id'] as int?,
      userId: User.fromJson(json['userId'] as Map<String, dynamic>),
      fiturId: json['fiturId'] as String?,
      anggotaKeluargaId: json['anggotaKeluargaId'] as String,
      judul: json['judul'] as String,
      isi: json['isi'] as String,
      tentang: json['tentang'] as String,
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

Map<String, dynamic> _$$_PemberitahuanToJson(_$_Pemberitahuan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'fiturId': instance.fiturId,
      'anggotaKeluargaId': instance.anggotaKeluargaId,
      'judul': instance.judul,
      'isi': instance.isi,
      'tentang': instance.tentang,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
