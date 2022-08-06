import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moms_care_mobile/models/bidan.dart';
import 'package:moms_care_mobile/models/desa_kelurahan.dart';
import 'package:moms_care_mobile/models/kabupaten_kota.dart';
import 'package:moms_care_mobile/models/kecamatan.dart';
import 'dart:convert';

import 'package:moms_care_mobile/models/provinsi.dart';

part 'kartu_keluarga.freezed.dart';
part 'kartu_keluarga.g.dart';

List<KartuKeluarga> listKartuKeluargaFromJson(String str) =>
    List<KartuKeluarga>.from(
        json.decode(str).map((x) => KartuKeluarga.fromJson(x)));

String listKartuKeluargaToJson(List<KartuKeluarga> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class KartuKeluarga with _$KartuKeluarga {
  const factory KartuKeluarga({
    required String id,
    required String bidanId,
    required String nomorKk,
    required String namaKepalaKeluarga,
    required String alamat,
    required String rt,
    required String rw,
    required String kodePos,
    required String desaKelurahanId,
    required String kecamatanId,
    required String kabupatenKotaId,
    required String provinsiId,
    String? fileKk,
    required String isValid,
    required DateTime tanggalValidasi,
    String? alasanDitolak,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    Provinsi? provinsi,
    KabupatenKota? kabupatenKota,
    Kecamatan? kecamatan,
    DesaKelurahan? desaKelurahan,
    Bidan? bidan,
  }) = _KartuKeluarga;

  factory KartuKeluarga.fromJson(Map<String, dynamic> json) =>
      _$KartuKeluargaFromJson(json);
}
