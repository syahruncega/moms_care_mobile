// To parse this JSON data, do
//
//     final jawabanMeningkatkanLifeSkill = jawabanMeningkatkanLifeSkillFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'jawaban_meningkatkan_life_skill.freezed.dart';
part 'jawaban_meningkatkan_life_skill.g.dart';

List<JawabanMeningkatkanLifeSkill> listJawabanMeningkatkanLifeSkillFromJson(
        String str) =>
    List<JawabanMeningkatkanLifeSkill>.from(
        json.decode(str).map((x) => JawabanMeningkatkanLifeSkill.fromJson(x)));

String listJawabanMeningkatkanLifeSkillToJson(
        List<JawabanMeningkatkanLifeSkill> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class JawabanMeningkatkanLifeSkill with _$JawabanMeningkatkanLifeSkill {
  const factory JawabanMeningkatkanLifeSkill({
    String? id,
    required String randaKabilasaId,
    required String soalId,
    required String jawaban,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _JawabanMeningkatkanLifeSkill;

  factory JawabanMeningkatkanLifeSkill.fromJson(Map<String, dynamic> json) =>
      _$JawabanMeningkatkanLifeSkillFromJson(json);
}
