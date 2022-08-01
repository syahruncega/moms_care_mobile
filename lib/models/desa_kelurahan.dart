import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'desa_kelurahan.freezed.dart';
part 'desa_kelurahan.g.dart';

List<DesaKelurahan> listDesaKelurahanFromJson(String str) => List<DesaKelurahan>.from(json.decode(str).map((x) => DesaKelurahan.fromJson(x)));

String listDesaKelurahanToJson(List<DesaKelurahan> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class DesaKelurahan with _$DesaKelurahan {
    const factory DesaKelurahan({
        required int id,
        required String kecamatanId,
        required String nama,
        dynamic polygon,
        dynamic warnaPolygon,
        DateTime? deletedAt,
        DateTime? createdAt,
        DateTime? updatedAt,
        dynamic koordinatPolygon,
    }) = _DesaKelurahan;

    factory DesaKelurahan.fromJson(Map<String, dynamic> json) => _$DesaKelurahanFromJson(json);
}
