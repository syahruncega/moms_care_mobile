import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'agama.freezed.dart';
part 'agama.g.dart';

List<Agama> listAgamaFromJson(String str) => List<Agama>.from(json.decode(str).map((x) => Agama.fromJson(x)));

String listAgamaToJson(List<Agama> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


@freezed
class Agama with _$Agama {
    const factory Agama({
        required int id,
        required String agama,
        DateTime? deletedAt,
    }) = _Agama;

    factory Agama.fromJson(Map<String, dynamic> json) => _$AgamaFromJson(json);
}
