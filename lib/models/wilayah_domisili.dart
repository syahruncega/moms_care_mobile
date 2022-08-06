// To parse this JSON data, do
//
//     final wilayahDomisili = wilayahDomisiliFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'wilayah_domisili.freezed.dart';
part 'wilayah_domisili.g.dart';

List<WilayahDomisili> listWilayahDomisiliFromJson(String str) =>
    List<WilayahDomisili>.from(
        json.decode(str).map((x) => WilayahDomisili.fromJson(x)));

String listWilayahDomisiliToJson(List<WilayahDomisili> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class WilayahDomisili with _$WilayahDomisili {
  const factory WilayahDomisili({
    required int id,
    required String anggotaKeluargaId,
    required String alamat,
    required String desaKelurahanId,
    required String kecamatanId,
    required String kabupatenKotaId,
    required String provinsiId,
    String? fileKetDomisili,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _WilayahDomisili;

  factory WilayahDomisili.fromJson(Map<String, dynamic> json) =>
      _$WilayahDomisiliFromJson(json);
}
