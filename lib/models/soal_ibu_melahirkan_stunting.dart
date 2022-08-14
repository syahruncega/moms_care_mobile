import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'soal_ibu_melahirkan_stunting.freezed.dart';
part 'soal_ibu_melahirkan_stunting.g.dart';

List<SoalIbuMelahirkanStunting> listSoalIbuMelahirkanStuntingFromJson(
        String str) =>
    List<SoalIbuMelahirkanStunting>.from(
        json.decode(str).map((x) => SoalIbuMelahirkanStunting.fromJson(x)));

String listSoalIbuMelahirkanStuntingToJson(
        List<SoalIbuMelahirkanStunting> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class SoalIbuMelahirkanStunting with _$SoalIbuMelahirkanStunting {
  const factory SoalIbuMelahirkanStunting({
    int? id,
    required String urutan,
    required String soal,
    DateTime? deletedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _SoalIbuMelahirkanStunting;

  factory SoalIbuMelahirkanStunting.fromJson(Map<String, dynamic> json) =>
      _$SoalIbuMelahirkanStuntingFromJson(json);
}
