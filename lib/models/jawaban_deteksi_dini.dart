// To parse this JSON data, do
//
//     final jawabanDeteksiDini = jawabanDeteksiDiniFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'jawaban_deteksi_dini.freezed.dart';
part 'jawaban_deteksi_dini.g.dart';

List<JawabanDeteksiDini> listJawabanDeteksiDiniFromJson(String str) =>
    List<JawabanDeteksiDini>.from(
        json.decode(str).map((x) => JawabanDeteksiDini.fromJson(x)));

String listJawabanDeteksiDiniToJson(List<JawabanDeteksiDini> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class JawabanDeteksiDini with _$JawabanDeteksiDini {
  const factory JawabanDeteksiDini({
    int? id,
    required String deteksiDiniId,
    required String soalId,
    required String jawaban,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deteletdAt,
  }) = _JawabanDeteksiDini;

  factory JawabanDeteksiDini.fromJson(Map<String, dynamic> json) =>
      _$JawabanDeteksiDiniFromJson(json);
}
