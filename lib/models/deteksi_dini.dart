// To parse this JSON data, do
//
//     final deteksiDini = deteksiDiniFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moms_care_mobile/models/anggota_keluarga.dart';
import 'dart:convert';

import 'package:moms_care_mobile/models/bidan.dart';

part 'deteksi_dini.freezed.dart';
part 'deteksi_dini.g.dart';

List<DeteksiDini> listDeteksiDiniFromJson(String str) => List<DeteksiDini>.from(
    json.decode(str).map((x) => DeteksiDini.fromJson(x)));

String listDeteksiDiniToJson(List<DeteksiDini> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class DeteksiDini with _$DeteksiDini {
  const factory DeteksiDini({
    String? id,
    required String anggotaKeluargaId,
    required String bidanId,
    required String skor,
    required String kategori,
    required String isValid,
    DateTime? tanggalValidasi,
    String? alasanDitolak,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Bidan? bidan,
    AnggotaKeluarga? anggotaKeluarga,
  }) = _DeteksiDini;

  factory DeteksiDini.fromJson(Map<String, dynamic> json) =>
      _$DeteksiDiniFromJson(json);
}
