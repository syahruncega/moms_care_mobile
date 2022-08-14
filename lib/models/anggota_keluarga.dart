// To parse this JSON data, do
//
//     final anggotaKeluarga = anggotaKeluargaFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moms_care_mobile/models/agama.dart';
import 'package:moms_care_mobile/models/bidan.dart';
import 'package:moms_care_mobile/models/golongan_darah.dart';
import 'dart:convert';

import 'package:moms_care_mobile/models/kartu_keluarga.dart';
import 'package:moms_care_mobile/models/pekerjaan.dart';
import 'package:moms_care_mobile/models/pendidikan.dart';
import 'package:moms_care_mobile/models/status_hubungan.dart';
import 'package:moms_care_mobile/models/status_perkawinan.dart';
import 'package:moms_care_mobile/models/user.dart';
import 'package:moms_care_mobile/models/wilayah_domisili.dart';

part 'anggota_keluarga.freezed.dart';
part 'anggota_keluarga.g.dart';

List<AnggotaKeluarga> listAnggotaKeluargaFromJson(String str) =>
    List<AnggotaKeluarga>.from(
        json.decode(str).map((x) => AnggotaKeluarga.fromJson(x)));

String listAnggotaKeluargaToJson(List<AnggotaKeluarga> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class AnggotaKeluarga with _$AnggotaKeluarga {
  const factory AnggotaKeluarga({
    String? id,
    required String bidanId,
    required String kartuKeluargaId,
    String? userId,
    required String namaLengkap,
    required String nik,
    required String jenisKelamin,
    required String tempatLahir,
    required DateTime tanggalLahir,
    required String agamaId,
    required String pendidikanId,
    required String jenisPekerjaanId,
    required String golonganDarahId,
    required String statusPerkawinanId,
    DateTime? tanggalPerkawinan,
    required String statusHubunganDalamKeluargaId,
    required String kewarganegaraan,
    String? noPaspor,
    String? noKitap,
    String? namaAyah,
    required String namaIbu,
    String? fotoProfil,
    required String isValid,
    DateTime? tanggalValidasi,
    String? alasanDitolak,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    int? umur,
    KartuKeluarga? kartuKeluarga,
    User? user,
    StatusHubungan? statusHubunganDalamKeluarga,
    Bidan? bidan,
    WilayahDomisili? wilayahDomisili,
    Agama? agama,
    Pendidikan? pendidikan,
    Pekerjaan? pekerjaan,
    GolonganDarah? golonganDarah,
    StatusPerkawinan? statusPerkawinan,
  }) = _AnggotaKeluarga;

  factory AnggotaKeluarga.fromJson(Map<String, dynamic> json) =>
      _$AnggotaKeluargaFromJson(json);
}
