import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:moms_care_mobile/models/session.dart';
import 'package:moms_care_mobile/services/logging.dart';

class DioClient {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "${dotenv.env['BASE_URL']!}/api",
      responseType: ResponseType.plain,
    ),
  )..interceptors.add(Logging());

  Future<Session?> login({required String nomorHP, required String password, required String role}) async {
    Session? session;

    try {
      Response response = await _dio.post(
        "/login",
        data: {
          "nomor_hp": nomorHP.length == 16? nomorHP : null,
          "nik": nomorHP.length < 16? nomorHP : null,
          "role": role,
          "password": password,
        },
      );

      session = Session.fromJson(response.data);
    } on DioError catch (e) {
      log('Error Login: $e');
      rethrow;
    }
    return session;
  }

  Future logout({required String token}) async {
    try {
      Response response = await _dio.get(
        "/logout",
        options: Options(headers: {
          "authorization": "Bearer $token",
        }),
      );

      log('${response.data}');
    } on DioError catch (e) {
      log('Error Logout: $e');
      rethrow;
    }
  }

  
}
