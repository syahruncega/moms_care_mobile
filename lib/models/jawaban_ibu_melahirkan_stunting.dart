import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'jawaban_ibu_melahirkan_stunting.freezed.dart';
part 'jawaban_ibu_melahirkan_stunting.g.dart';

List<JawabanIbuMelahirkanStunting> listJawabanIbuMelahirkanStuntingFromJson(
        String str) =>
    List<JawabanIbuMelahirkanStunting>.from(
        json.decode(str).map((x) => JawabanIbuMelahirkanStunting.fromJson(x)));

String listJawabanIbuMelahirkanStuntingToJson(
        List<JawabanIbuMelahirkanStunting> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class JawabanIbuMelahirkanStunting with _$JawabanIbuMelahirkanStunting {
  const factory JawabanIbuMelahirkanStunting({
    String? id,
    required String deteksiIbuMelahirkanStuntingId,
    required String soalId,
    required String jawaban,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _JawabanIbuMelahirkanStunting;

  factory JawabanIbuMelahirkanStunting.fromJson(Map<String, dynamic> json) =>
      _$JawabanIbuMelahirkanStuntingFromJson(json);
}
