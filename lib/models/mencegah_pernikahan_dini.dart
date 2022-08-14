// To parse this JSON data, do
//
//     final mencegahPernikahanDini = mencegahPernikahanDiniFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'mencegah_pernikahan_dini.freezed.dart';
part 'mencegah_pernikahan_dini.g.dart';

List<MencegahPernikahanDini> listMencegahPernikahanDiniFromJson(String str) =>
    List<MencegahPernikahanDini>.from(
        json.decode(str).map((x) => MencegahPernikahanDini.fromJson(x)));

String listMencegahPernikahanDiniToJson(List<MencegahPernikahanDini> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class MencegahPernikahanDini with _$MencegahPernikahanDini {
  const factory MencegahPernikahanDini(
      {String? id,
      required String randaKabilasaId,
      required String jawaban1,
      required String jawaban2,
      required String jawaban3,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) = _MencegahPernikahanDini;

  factory MencegahPernikahanDini.fromJson(Map<String, dynamic> json) =>
      _$MencegahPernikahanDiniFromJson(json);
}
