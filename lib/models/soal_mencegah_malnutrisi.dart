// To parse this JSON data, do
//
//     final soalMencegahMalnutrisi = soalMencegahMalnutrisiFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'soal_mencegah_malnutrisi.freezed.dart';
part 'soal_mencegah_malnutrisi.g.dart';

List<SoalMencegahMalnutrisi> listSoalMencegahMalnutrisiFromJson(String str) =>
    List<SoalMencegahMalnutrisi>.from(
        json.decode(str).map((x) => SoalMencegahMalnutrisi.fromJson(x)));

String listSoalMencegahMalnutrisiToJson(List<SoalMencegahMalnutrisi> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class SoalMencegahMalnutrisi with _$SoalMencegahMalnutrisi {
  const factory SoalMencegahMalnutrisi({
    int? id,
    required String urutan,
    required String soal,
    required String skorYa,
    required String skorTidak,
    DateTime? deletedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _SoalMencegahMalnutrisi;

  factory SoalMencegahMalnutrisi.fromJson(Map<String, dynamic> json) =>
      _$SoalMencegahMalnutrisiFromJson(json);
}
