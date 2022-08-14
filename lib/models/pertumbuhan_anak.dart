import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moms_care_mobile/models/anggota_keluarga.dart';
import 'dart:convert';

import 'package:moms_care_mobile/models/bidan.dart';

part 'pertumbuhan_anak.freezed.dart';
part 'pertumbuhan_anak.g.dart';

List<PertumbuhanAnak> listPertumbuhanAnakFromJson(String str) =>
    List<PertumbuhanAnak>.from(
        json.decode(str).map((x) => PertumbuhanAnak.fromJson(x)));

String listPertumbuhanAnakToJson(List<PertumbuhanAnak> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class PertumbuhanAnak with _$PertumbuhanAnak {
  const factory PertumbuhanAnak({
    String? id,
    required String anggotaKeluargaId,
    required String bidanId,
    required String beratBadan,
    required String zscore,
    required String hasil,
    required String isValid,
    DateTime? tanggalValidasi,
    String? alasanDitolak,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Bidan? bidan,
    AnggotaKeluarga? anggotaKeluarga,
  }) = _PertumbuhanAnak;

  factory PertumbuhanAnak.fromJson(Map<String, dynamic> json) =>
      _$PertumbuhanAnakFromJson(json);
}
