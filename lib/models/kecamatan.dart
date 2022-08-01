// To parse this JSON data, do
//
//     final kecamatan = kecamatanFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'kecamatan.freezed.dart';
part 'kecamatan.g.dart';

List<Kecamatan> listKecamatanFromJson(String str) => List<Kecamatan>.from(json.decode(str).map((x) => Kecamatan.fromJson(x)));

String listKecamatanToJson(List<Kecamatan> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Kecamatan with _$Kecamatan {
    const factory Kecamatan({
        required int id,
        required String kabupatenKotaId,
        required String nama,
        dynamic polygon,
        dynamic warnaPolygon,
        DateTime? deletedAt,
        DateTime? createdAt,
        DateTime? updatedAt,
        dynamic koordinatPolygon,
    }) = _Kecamatan;

    factory Kecamatan.fromJson(Map<String, dynamic> json) => _$KecamatanFromJson(json);
}
