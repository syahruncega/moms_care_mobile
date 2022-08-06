// To parse this JSON data, do
//
//     final bidan = bidanFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moms_care_mobile/models/agama.dart';
import 'package:moms_care_mobile/models/desa_kelurahan.dart';
import 'package:moms_care_mobile/models/kabupaten_kota.dart';
import 'package:moms_care_mobile/models/kecamatan.dart';
import 'package:moms_care_mobile/models/lokasi_tugas.dart';
import 'package:moms_care_mobile/models/provinsi.dart';
import 'dart:convert';

import 'package:moms_care_mobile/models/user.dart';

part 'bidan.freezed.dart';
part 'bidan.g.dart';

List<Bidan> listBidanFromJson(String str) =>
    List<Bidan>.from(json.decode(str).map((x) => Bidan.fromJson(x)));

String listBidanToJson(List<Bidan> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Bidan with _$Bidan {
  const factory Bidan({
    required String id,
    required String userId,
    required String nik,
    required String namaLengkap,
    required String jenisKelamin,
    required String tempatLahir,
    required DateTime tanggalLahir,
    required String agamaId,
    required String tujuhAngkaTerakhirStr,
    required String nomorHp,
    required String email,
    required String alamat,
    required String desaKelurahanId,
    required String kecamatanId,
    required String kabupatenKotaId,
    required String provinsiId,
    String? fotoProfil,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    User? user,
    Provinsi? provinsi,
    KabupatenKota? kabupatenKota,
    Kecamatan? kecamatan,
    DesaKelurahan? desaKelurahan,
    List<LokasiTugas>? lokasiTugas,
    Agama? agama,
  }) = _Bidan;

  factory Bidan.fromJson(Map<String, dynamic> json) => _$BidanFromJson(json);
}
