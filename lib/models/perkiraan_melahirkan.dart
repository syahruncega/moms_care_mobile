import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:moms_care_mobile/models/anggota_keluarga.dart';
import 'package:moms_care_mobile/models/bidan.dart';

part 'perkiraan_melahirkan.freezed.dart';
part 'perkiraan_melahirkan.g.dart';

List<PerkiraanMelahirkan> listPerkiraanMelahirkanFromJson(String str) =>
    List<PerkiraanMelahirkan>.from(
        json.decode(str).map((x) => PerkiraanMelahirkan.fromJson(x)));

String listPerkiraanMelahirkanToJson(List<PerkiraanMelahirkan> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class PerkiraanMelahirkan with _$PerkiraanMelahirkan {
  const factory PerkiraanMelahirkan({
    String? id,
    required String anggotaKeluargaId,
    required String bidanId,
    required DateTime tanggalHaidTerakhir,
    required DateTime tanggalPerkiraanLahir,
    required String isValid,
    DateTime? tanggalValidasi,
    String? alasanDitolak,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Bidan? bidan,
    AnggotaKeluarga? anggotaKeluarga,
  }) = _PerkiraanMelahirkan;

  factory PerkiraanMelahirkan.fromJson(Map<String, dynamic> json) =>
      _$PerkiraanMelahirkanFromJson(json);
}
