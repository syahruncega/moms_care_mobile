import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'pekerjaan.freezed.dart';
part 'pekerjaan.g.dart';

List<Pekerjaan> listPekerjaanFromJson(String str) =>
    List<Pekerjaan>.from(json.decode(str).map((x) => Pekerjaan.fromJson(x)));

String listPekerjaanToJson(List<Pekerjaan> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Pekerjaan with _$Pekerjaan {
  const factory Pekerjaan({
    required int id,
    required String pekerjaan,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _Pekerjaan;

  factory Pekerjaan.fromJson(Map<String, dynamic> json) =>
      _$PekerjaanFromJson(json);
}
