import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'soal_deteksi_dini.freezed.dart';
part 'soal_deteksi_dini.g.dart';

List<SoalDeteksiDini> listSoalDeteksiDiniFromJson(String str) =>
    List<SoalDeteksiDini>.from(
        json.decode(str).map((x) => SoalDeteksiDini.fromJson(x)));

String listSoalDeteksiDiniToJson(List<SoalDeteksiDini> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class SoalDeteksiDini with _$SoalDeteksiDini {
  const factory SoalDeteksiDini({
    int? id,
    required String urutan,
    required String soal,
    required String skorYa,
    required String skorTidak,
    DateTime? deletedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _SoalDeteksiDini;

  factory SoalDeteksiDini.fromJson(Map<String, dynamic> json) =>
      _$SoalDeteksiDiniFromJson(json);
}
