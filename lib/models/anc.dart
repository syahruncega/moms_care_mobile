// To parse this JSON data, do
//
//     final anc = ancFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moms_care_mobile/models/anggota_keluarga.dart';
import 'dart:convert';

import 'package:moms_care_mobile/models/bidan.dart';

part 'anc.freezed.dart';
part 'anc.g.dart';

List<Anc> listAncFromJson(String str) =>
    List<Anc>.from(json.decode(str).map((x) => Anc.fromJson(x)));

String listAncToJson(List<Anc> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Anc with _$Anc {
  const factory Anc({
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
  }) = _Anc;

  factory Anc.fromJson(Map<String, dynamic> json) => _$AncFromJson(json);
}
