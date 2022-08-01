// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'penyuluh.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Penyuluh _$$_PenyuluhFromJson(Map<String, dynamic> json) => _$_Penyuluh(
      id: json['id'] as String,
      userId: json['userId'] as String,
      nik: json['nik'] as String,
      namaLengkap: json['namaLengkap'] as String,
      jenisKelamin: json['jenisKelamin'] as String,
      tempatLahir: json['tempatLahir'] as String,
      tanggalLahir: DateTime.parse(json['tanggalLahir'] as String),
      agamaId: json['agamaId'] as String,
      tujuhAngkaTerakhirStr: json['tujuhAngkaTerakhirStr'] as String,
      nomorHp: json['nomorHp'] as String,
      email: json['email'] as String,
      alamat: json['alamat'] as String,
      desaKelurahanId: json['desaKelurahanId'] as String,
      kecamatanId: json['kecamatanId'] as String,
      kabupatenKotaId: json['kabupatenKotaId'] as String,
      provinsiId: json['provinsiId'] as String,
      fotoProfil: json['fotoProfil'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      provinsi: json['provinsi'] == null
          ? null
          : Provinsi.fromJson(json['provinsi'] as Map<String, dynamic>),
      kabupatenKota: json['kabupatenKota'] == null
          ? null
          : KabupatenKota.fromJson(
              json['kabupatenKota'] as Map<String, dynamic>),
      kecamatan: json['kecamatan'] == null
          ? null
          : Kecamatan.fromJson(json['kecamatan'] as Map<String, dynamic>),
      desaKelurahan: json['desaKelurahan'] == null
          ? null
          : DesaKelurahan.fromJson(
              json['desaKelurahan'] as Map<String, dynamic>),
      lokasiTugas: (json['lokasiTugas'] as List<dynamic>?)
          ?.map((e) => LokasiTugas.fromJson(e as Map<String, dynamic>))
          .toList(),
      agama: json['agama'] == null
          ? null
          : Agama.fromJson(json['agama'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PenyuluhToJson(_$_Penyuluh instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'nik': instance.nik,
      'namaLengkap': instance.namaLengkap,
      'jenisKelamin': instance.jenisKelamin,
      'tempatLahir': instance.tempatLahir,
      'tanggalLahir': instance.tanggalLahir.toIso8601String(),
      'agamaId': instance.agamaId,
      'tujuhAngkaTerakhirStr': instance.tujuhAngkaTerakhirStr,
      'nomorHp': instance.nomorHp,
      'email': instance.email,
      'alamat': instance.alamat,
      'desaKelurahanId': instance.desaKelurahanId,
      'kecamatanId': instance.kecamatanId,
      'kabupatenKotaId': instance.kabupatenKotaId,
      'provinsiId': instance.provinsiId,
      'fotoProfil': instance.fotoProfil,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'user': instance.user,
      'provinsi': instance.provinsi,
      'kabupatenKota': instance.kabupatenKota,
      'kecamatan': instance.kecamatan,
      'desaKelurahan': instance.desaKelurahan,
      'lokasiTugas': instance.lokasiTugas,
      'agama': instance.agama,
    };
