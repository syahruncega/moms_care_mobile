import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moms_care_mobile/models/agama.dart';
import 'package:moms_care_mobile/models/desa_kelurahan.dart';
import 'package:moms_care_mobile/models/kabupaten_kota.dart';
import 'package:moms_care_mobile/models/kecamatan.dart';
import 'package:moms_care_mobile/models/lokasi_tugas.dart';
import 'package:moms_care_mobile/models/provinsi.dart';
import 'dart:convert';

import 'package:moms_care_mobile/models/user.dart';

part 'penyuluh.freezed.dart';
part 'penyuluh.g.dart';

List<Penyuluh> listPenyuluhFromJson(String str) => List<Penyuluh>.from(json.decode(str).map((x) => Penyuluh.fromJson(x)));

String listPenyuluhToJson(List<Penyuluh> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Penyuluh with _$Penyuluh {
    const factory Penyuluh({
        required String id,
        required String userId,
        required String nik,
        required String namaLengkap,
        required String jenisKelamin,
        required String tempatLahir,
        required DateTime tanggalLahir,
        required String agamaId,
        required String tujuhAngkaTerakhirStr,
        required String nomorHp,
        required String email,
        required String alamat,
        required String desaKelurahanId,
        required String kecamatanId,
        required String kabupatenKotaId,
        required String provinsiId,
        String? fotoProfil,
        DateTime? createdAt,
        DateTime? updatedAt,
        DateTime? deletedAt,
        User? user,
        Provinsi? provinsi,
        KabupatenKota? kabupatenKota,
        Kecamatan? kecamatan,
        DesaKelurahan? desaKelurahan,
        List<LokasiTugas>? lokasiTugas,
        Agama? agama,
    }) = _Penyuluh;

    factory Penyuluh.fromJson(Map<String, dynamic> json) => _$PenyuluhFromJson(json);
}