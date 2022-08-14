import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'pendidikan.freezed.dart';
part 'pendidikan.g.dart';

List<Pendidikan> listPendidikanFromJson(String str) =>
    List<Pendidikan>.from(json.decode(str).map((x) => Pendidikan.fromJson(x)));

String listPendidikanToJson(List<Pendidikan> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Pendidikan with _$Pendidikan {
  const factory Pendidikan({
    required int id,
    required String pendidikan,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _Pendidikan;

  factory Pendidikan.fromJson(Map<String, dynamic> json) =>
      _$PendidikanFromJson(json);
}
