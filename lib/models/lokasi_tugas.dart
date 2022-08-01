import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moms_care_mobile/models/desa_kelurahan.dart';

part 'lokasi_tugas.freezed.dart';
part 'lokasi_tugas.g.dart';

LokasiTugas listLokasiTugasFromJson(String str) => LokasiTugas.fromJson(json.decode(str));

String listLokasiTugasToJson(LokasiTugas data) => json.encode(data.toJson());

@freezed
class LokasiTugas with _$LokasiTugas {
    const factory LokasiTugas({
        required int id,
        required String jenisProfil,
        required String profilId,
        required String desaKelurahanId,
        required String kecamatanId,
        required String kabupatenKotaId,
        required String provinsiId,
        DateTime? createdAt,
        DateTime? updatedAt,
        DesaKelurahan? desaKelurahan,
    }) = _LokasiTugas;

    factory LokasiTugas.fromJson(Map<String, dynamic> json) => _$LokasiTugasFromJson(json);
}