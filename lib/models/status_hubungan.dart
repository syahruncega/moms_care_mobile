import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'status_hubungan.freezed.dart';
part 'status_hubungan.g.dart';

List<StatusHubungan> listStatusHubunganFromJson(String str) =>
    List<StatusHubungan>.from(
        json.decode(str).map((x) => StatusHubungan.fromJson(x)));

String listStatusHubunganToJson(List<StatusHubungan> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class StatusHubungan with _$StatusHubungan {
  const factory StatusHubungan({
    required int id,
    required String statusHubungan,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _StatusHubungan;

  factory StatusHubungan.fromJson(Map<String, dynamic> json) =>
      _$StatusHubunganFromJson(json);
}
