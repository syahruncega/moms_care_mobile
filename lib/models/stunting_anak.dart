import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moms_care_mobile/models/anggota_keluarga.dart';
import 'dart:convert';

import 'package:moms_care_mobile/models/bidan.dart';

part 'stunting_anak.freezed.dart';
part 'stunting_anak.g.dart';

List<StuntingAnak> listStuntingAnakFromJson(String str) =>
    List<StuntingAnak>.from(
        json.decode(str).map((x) => StuntingAnak.fromJson(x)));

String listStuntingAnakToJson(List<StuntingAnak> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class StuntingAnak with _$StuntingAnak {
  const factory StuntingAnak({
    String? id,
    required String anggotaKeluargaId,
    String? bidanId,
    required String tinggiBadan,
    required String zscore,
    required String kategori,
    required String isValid,
    DateTime? tanggalValidasi,
    String? alasanDitolak,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Bidan? bidan,
    AnggotaKeluarga? anggotaKeluarga,
  }) = _StuntingAnak;

  factory StuntingAnak.fromJson(Map<String, dynamic> json) =>
      _$StuntingAnakFromJson(json);
}
