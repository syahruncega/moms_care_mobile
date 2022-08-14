import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moms_care_mobile/models/anggota_keluarga.dart';
import 'dart:convert';

import 'package:moms_care_mobile/models/bidan.dart';
import 'package:moms_care_mobile/models/mencegah_malnutrisi.dart';
import 'package:moms_care_mobile/models/mencegah_pernikahan_dini.dart';

part 'randa_kabilasa.freezed.dart';
part 'randa_kabilasa.g.dart';

List<RandaKabilasa> listRandaKabilasaFromJson(String str) =>
    List<RandaKabilasa>.from(
        json.decode(str).map((x) => RandaKabilasa.fromJson(x)));

String listRandaKabilasaToJson(List<RandaKabilasa> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class RandaKabilasa with _$RandaKabilasa {
  const factory RandaKabilasa({
    String? id,
    required String anggotaKeluargaId,
    required String bidanId,
    required String isMencegahMalnutrisi,
    required String isMencegahPernikahanDini,
    required String isMeningkatkanLifeSkill,
    required String kategoriHb,
    required String kategoriLingkarLenganAtas,
    required String kategoriImt,
    required String kategoriMencegahMalnutrisi,
    required String kategoriMeningkatkanLifeSkill,
    required String kategoriMencegahPernikahanDini,
    required String isValidMencegahMalnutrisi,
    required String isValidMencegahPernikahanDini,
    required String isValidMeningkatkanLifeSkill,
    DateTime? tanggalValidasi,
    String? alasanDitolakMencegahMalnutrisi,
    String? alasanDitolakMencegahPernikahanDini,
    String? alasanDitolakMeningkatkanLifeSkill,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Bidan? bidan,
    AnggotaKeluarga? anggotaKeluarga,
    MencegahMalnutrisi? mencegahMalnutrisi,
    MencegahPernikahanDini? mencegahPernikahanDini,
  }) = _RandaKabilasa;

  factory RandaKabilasa.fromJson(Map<String, dynamic> json) =>
      _$RandaKabilasaFromJson(json);
}
