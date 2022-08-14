import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moms_care_mobile/models/anggota_keluarga.dart';
import 'dart:convert';

import 'package:moms_care_mobile/models/bidan.dart';

part 'ibu_melahirkan_stunting.freezed.dart';
part 'ibu_melahirkan_stunting.g.dart';

List<IbuMelahirkanStunting> listIbuMelahirkanStuntingFromJson(String str) =>
    List<IbuMelahirkanStunting>.from(
        json.decode(str).map((x) => IbuMelahirkanStunting.fromJson(x)));

String listIMelahirkanStuntingToJson(List<IbuMelahirkanStunting> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class IbuMelahirkanStunting with _$IbuMelahirkanStunting {
  const factory IbuMelahirkanStunting({
    String? id,
    required String anggotaKeluargaId,
    String? bidanId,
    required String kategori,
    required String isValid,
    DateTime? tanggalValidasi,
    String? alasanDitolak,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Bidan? bidan,
    AnggotaKeluarga? anggotaKeluarga,
  }) = _IbuMelahirkanStunting;

  factory IbuMelahirkanStunting.fromJson(Map<String, dynamic> json) =>
      _$IbuMelahirkanStuntingFromJson(json);
}
