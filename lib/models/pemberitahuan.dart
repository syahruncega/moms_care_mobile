import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
import 'package:moms_care_mobile/models/user.dart';

part 'pemberitahuan.freezed.dart';
part 'pemberitahuan.g.dart';

List<Pemberitahuan> listPemberitahuanFromJson(String str) =>
    List<Pemberitahuan>.from(
        json.decode(str).map((x) => Pemberitahuan.fromJson(x)));

String listPemberitahuanToJson(List<Pemberitahuan> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Pemberitahuan with _$Pemberitahuan {
  const factory Pemberitahuan({
    int? id,
    required User userId,
    String? fiturId,
    required String anggotaKeluargaId,
    required String judul,
    required String isi,
    required String tentang,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _Pemberitahuan;

  factory Pemberitahuan.fromJson(Map<String, dynamic> json) =>
      _$PemberitahuanFromJson(json);
}
