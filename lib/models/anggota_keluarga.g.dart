// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anggota_keluarga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnggotaKeluarga _$$_AnggotaKeluargaFromJson(Map<String, dynamic> json) =>
    _$_AnggotaKeluarga(
      id: json['id'] as String?,
      bidanId: json['bidanId'] as String,
      kartuKeluargaId: json['kartuKeluargaId'] as String,
      userId: json['userId'] as String?,
      namaLengkap: json['namaLengkap'] as String,
      nik: json['nik'] as String,
      jenisKelamin: json['jenisKelamin'] as String,
      tempatLahir: json['tempatLahir'] as String,
      tanggalLahir: DateTime.parse(json['tanggalLahir'] as String),
      agamaId: json['agamaId'] as String,
      pendidikanId: json['pendidikanId'] as String,
      jenisPekerjaanId: json['jenisPekerjaanId'] as String,
      golonganDarahId: json['golonganDarahId'] as String,
      statusPerkawinanId: json['statusPerkawinanId'] as String,
      tanggalPerkawinan: json['tanggalPerkawinan'] == null
          ? null
          : DateTime.parse(json['tanggalPerkawinan'] as String),
      statusHubunganDalamKeluargaId:
          json['statusHubunganDalamKeluargaId'] as String,
      kewarganegaraan: json['kewarganegaraan'] as String,
      noPaspor: json['noPaspor'] as String?,
      noKitap: json['noKitap'] as String?,
      namaAyah: json['namaAyah'] as String?,
      namaIbu: json['namaIbu'] as String,
      fotoProfil: json['fotoProfil'] as String?,
      isValid: json['isValid'] as String,
      tanggalValidasi: json['tanggalValidasi'] == null
          ? null
          : DateTime.parse(json['tanggalValidasi'] as String),
      alasanDitolak: json['alasanDitolak'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      umur: json['umur'] as int?,
      kartuKeluarga: json['kartuKeluarga'] == null
          ? null
          : KartuKeluarga.fromJson(
              json['kartuKeluarga'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      statusHubunganDalamKeluarga: json['statusHubunganDalamKeluarga'] == null
          ? null
          : StatusHubungan.fromJson(
              json['statusHubunganDalamKeluarga'] as Map<String, dynamic>),
      bidan: json['bidan'] == null
          ? null
          : Bidan.fromJson(json['bidan'] as Map<String, dynamic>),
      wilayahDomisili: json['wilayahDomisili'] == null
          ? null
          : WilayahDomisili.fromJson(
              json['wilayahDomisili'] as Map<String, dynamic>),
      agama: json['agama'] == null
          ? null
          : Agama.fromJson(json['agama'] as Map<String, dynamic>),
      pendidikan: json['pendidikan'] == null
          ? null
          : Pendidikan.fromJson(json['pendidikan'] as Map<String, dynamic>),
      pekerjaan: json['pekerjaan'] == null
          ? null
          : Pekerjaan.fromJson(json['pekerjaan'] as Map<String, dynamic>),
      golonganDarah: json['golonganDarah'] == null
          ? null
          : GolonganDarah.fromJson(
              json['golonganDarah'] as Map<String, dynamic>),
      statusPerkawinan: json['statusPerkawinan'] == null
          ? null
          : StatusPerkawinan.fromJson(
              json['statusPerkawinan'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AnggotaKeluargaToJson(_$_AnggotaKeluarga instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bidanId': instance.bidanId,
      'kartuKeluargaId': instance.kartuKeluargaId,
      'userId': instance.userId,
      'namaLengkap': instance.namaLengkap,
      'nik': instance.nik,
      'jenisKelamin': instance.jenisKelamin,
      'tempatLahir': instance.tempatLahir,
      'tanggalLahir': instance.tanggalLahir.toIso8601String(),
      'agamaId': instance.agamaId,
      'pendidikanId': instance.pendidikanId,
      'jenisPekerjaanId': instance.jenisPekerjaanId,
      'golonganDarahId': instance.golonganDarahId,
      'statusPerkawinanId': instance.statusPerkawinanId,
      'tanggalPerkawinan': instance.tanggalPerkawinan?.toIso8601String(),
      'statusHubunganDalamKeluargaId': instance.statusHubunganDalamKeluargaId,
      'kewarganegaraan': instance.kewarganegaraan,
      'noPaspor': instance.noPaspor,
      'noKitap': instance.noKitap,
      'namaAyah': instance.namaAyah,
      'namaIbu': instance.namaIbu,
      'fotoProfil': instance.fotoProfil,
      'isValid': instance.isValid,
      'tanggalValidasi': instance.tanggalValidasi?.toIso8601String(),
      'alasanDitolak': instance.alasanDitolak,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'umur': instance.umur,
      'kartuKeluarga': instance.kartuKeluarga,
      'user': instance.user,
      'statusHubunganDalamKeluarga': instance.statusHubunganDalamKeluarga,
      'bidan': instance.bidan,
      'wilayahDomisili': instance.wilayahDomisili,
      'agama': instance.agama,
      'pendidikan': instance.pendidikan,
      'pekerjaan': instance.pekerjaan,
      'golonganDarah': instance.golonganDarah,
      'statusPerkawinan': instance.statusPerkawinan,
    };
