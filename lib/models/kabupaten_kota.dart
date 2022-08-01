import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'kabupaten_kota.freezed.dart';
part 'kabupaten_kota.g.dart';

List<KabupatenKota> listKabupatenKotaFromJson(String str) => List<KabupatenKota>.from(json.decode(str).map((x) => KabupatenKota.fromJson(x)));

String listKabupatenKotaToJson(List<KabupatenKota> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class KabupatenKota with _$KabupatenKota {
    const factory KabupatenKota({
      required  int id,
      required  String provinsiId,
      required  String nama,
        DateTime? deletedAt,
        DateTime? createdAt,
        DateTime? updatedAt,
    }) = _KabupatenKota;

    factory KabupatenKota.fromJson(Map<String, dynamic> json) => _$KabupatenKotaFromJson(json);
}
