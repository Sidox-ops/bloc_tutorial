import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiServices {
  static ApiServices? _instance;
  ApiServices._internal();

  static ApiServices getApiServices() {
    _instance ??= ApiServices._internal();
    /*if (_instance == null) {
      return ApiServices._internal();
    }*/
    return _instance!;
  }

  Future fetch(String path) {
    final String api = 'https://pokebuildapi.fr/api/v1/$path';
    return http.get(Uri.parse(api));
  }
}
