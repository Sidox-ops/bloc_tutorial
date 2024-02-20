import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiServices {
  static final ApiServices _instance = ApiServices();
  Future<http.Response> fetch(String path) {
    final String api = 'https://pokebuildapi.fr/api/v1/$path';
    return http.get(Uri.parse(api));
    /*if (response.statusCode == 200) {
      var body = response.body;
      return response;
    } else {
      throw Exception(
          'Failed to load albums from the internet ${response.statusCode} \n $api');
    }*/
  }
}
