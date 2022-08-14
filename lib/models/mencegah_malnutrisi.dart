import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'mencegah_malnutrisi.freezed.dart';
part 'mencegah_malnutrisi.g.dart';

List<MencegahMalnutrisi> listMencegahMalnutrisiFromJson(String str) =>
    List<MencegahMalnutrisi>.from(
        json.decode(str).map((x) => MencegahMalnutrisi.fromJson(x)));

String listMencegahMalnutrisiToJson(List<MencegahMalnutrisi> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class MencegahMalnutrisi with _$MencegahMalnutrisi {
  const factory MencegahMalnutrisi({
    String? id,
    required String randaKabilasaId,
    required String lingkarLenganAtas,
    required String tinggiBadan,
    required String beratBadan,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _MencegahMalnutrisi;

  factory MencegahMalnutrisi.fromJson(Map<String, dynamic> json) =>
      _$MencegahMalnutrisiFromJson(json);
}
