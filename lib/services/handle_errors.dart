import 'package:dio/dio.dart';

handleError({required DioError error}) {
    if (error.type == DioErrorType.other) {
      // errorScackbar('Anda tidak terhubung dengan internet');
    } else {
      // errorScackbar('Sedang terjadi masalah, coba lagi beberapa saat');
    }

}
