// To parse this JSON data, do
//
//     final soalMeningkatkanLifeSkill = soalMeningkatkanLifeSkillFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'soal_meningkatkan_life_skill.freezed.dart';
part 'soal_meningkatkan_life_skill.g.dart';

List<SoalMeningkatkanLifeSkill> listSoalMeningkatkanLifeSkillFromJson(
        String str) =>
    List<SoalMeningkatkanLifeSkill>.from(
        json.decode(str).map((x) => SoalMeningkatkanLifeSkill.fromJson(x)));

String listSoalMeningkatkanLifeSkillToJson(
        List<SoalMeningkatkanLifeSkill> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class SoalMeningkatkanLifeSkill with _$SoalMeningkatkanLifeSkill {
  const factory SoalMeningkatkanLifeSkill({
    int? id,
    required String urutan,
    required String soal,
    required String skorYa,
    required String skorTidak,
    DateTime? deletedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _SoalMeningkatkanLifeSkill;

  factory SoalMeningkatkanLifeSkill.fromJson(Map<String, dynamic> json) =>
      _$SoalMeningkatkanLifeSkillFromJson(json);
}
