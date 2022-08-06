import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'status_perkawinan.freezed.dart';
part 'status_perkawinan.g.dart';

List<StatusPerkawinan> listStatusPerkawinanFromJson(String str) =>
    List<StatusPerkawinan>.from(
        json.decode(str).map((x) => StatusPerkawinan.fromJson(x)));

String listStatusPerkawinanToJson(List<StatusPerkawinan> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class StatusPerkawinan with _$StatusPerkawinan {
  const factory StatusPerkawinan({
    required int id,
    required String statusPerkawinan,
    DateTime? deletedAt,
  }) = _StatusPerkawinan;

  factory StatusPerkawinan.fromJson(Map<String, dynamic> json) =>
      _$StatusPerkawinanFromJson(json);
}
