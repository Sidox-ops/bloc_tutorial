import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<http.Response> fetch(String path) async {
    final String api = 'https://pokebuildapi.fr/api/v1/$path';
    final response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to load albums from the internet ${response.statusCode} \n $api');
    }
  }
}
