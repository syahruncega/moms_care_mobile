import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'provinsi.freezed.dart';
part 'provinsi.g.dart';

List<Provinsi> listProvinsiFromJson(String str) => List<Provinsi>.from(json.decode(str).map((x) => Provinsi.fromJson(x)));

String listProvinsiToJson(List<Provinsi> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Provinsi with _$Provinsi {
    const factory Provinsi({
        required int id,
        required String nama,
        DateTime? deletedAt,
        DateTime? createdAt,
        DateTime? updatedAt,
    }) = _Provinsi;

    factory Provinsi.fromJson(Map<String, dynamic> json) => _$ProvinsiFromJson(json);
}
