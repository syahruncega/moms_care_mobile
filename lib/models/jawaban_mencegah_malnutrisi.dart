// To parse this JSON data, do
//
//     final jawabanMencegahMalnutrisi = jawabanMencegahMalnutrisiFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'jawaban_mencegah_malnutrisi.freezed.dart';
part 'jawaban_mencegah_malnutrisi.g.dart';

List<JawabanMencegahMalnutrisi> listJawabanMencegahMalnutrisiFromJson(
        String str) =>
    List<JawabanMencegahMalnutrisi>.from(
        json.decode(str).map((x) => JawabanMencegahMalnutrisi.fromJson(x)));

String listJawabanMencegahMalnutrisiToJson(
        List<JawabanMencegahMalnutrisi> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class JawabanMencegahMalnutrisi with _$JawabanMencegahMalnutrisi {
  const factory JawabanMencegahMalnutrisi({
    String? id,
    required String mencegahMalnutrisiId,
    required String soalId,
    required String jawaban,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _JawabanMencegahMalnutrisi;

  factory JawabanMencegahMalnutrisi.fromJson(Map<String, dynamic> json) =>
      _$JawabanMencegahMalnutrisiFromJson(json);
}
