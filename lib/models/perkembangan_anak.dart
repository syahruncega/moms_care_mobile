// To parse this JSON data, do
//
//     final perkembanganAnak = perkembanganAnakFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moms_care_mobile/models/anggota_keluarga.dart';
import 'dart:convert';

import 'package:moms_care_mobile/models/bidan.dart';

part 'perkembangan_anak.freezed.dart';
part 'perkembangan_anak.g.dart';

List<PerkembanganAnak> listPerkembanganAnakFromJson(String str) =>
    List<PerkembanganAnak>.from(
        json.decode(str).map((x) => PerkembanganAnak.fromJson(x)));

String listPerkembanganAnakToJson(List<PerkembanganAnak> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class PerkembanganAnak with _$PerkembanganAnak {
  const factory PerkembanganAnak({
    String? id,
    required String anggotaKeluargaId,
    required String bidanId,
    required String pemeriksaanKe,
    required String kategoriBadan,
    required String kategoriTekananDarah,
    required String kategoriLenganAtas,
    required String kategoriDenyutJantung,
    required String kategoriHemoglobinDarah,
    required String vaksinTetanusSebelumHamil,
    required String vaksinTetanusSesudahHamil,
    required String minumTablet,
    required String konseling,
    required String posisiJanin,
    required String isValid,
    DateTime? tanggalValidasi,
    String? alasanDitolak,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Bidan? bidan,
    AnggotaKeluarga? anggotaKeluarga,
  }) = _PerkembanganAnak;

  factory PerkembanganAnak.fromJson(Map<String, dynamic> json) =>
      _$PerkembanganAnakFromJson(json);
}
