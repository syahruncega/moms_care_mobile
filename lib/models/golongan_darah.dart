import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'golongan_darah.freezed.dart';
part 'golongan_darah.g.dart';

List<GolonganDarah> listGolonganDarahFromJson(String str) =>
    List<GolonganDarah>.from(
        json.decode(str).map((x) => GolonganDarah.fromJson(x)));

String listGolonganDarahToJson(List<GolonganDarah> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class GolonganDarah with _$GolonganDarah {
  const factory GolonganDarah({
    required int id,
    required String golonganDarah,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _GolonganDarah;

  factory GolonganDarah.fromJson(Map<String, dynamic> json) =>
      _$GolonganDarahFromJson(json);
}
