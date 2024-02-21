import 'package:bloc_tutorial/data/models/pokemon_types_model.dart';
import 'package:bloc_tutorial/services/api_services.dart';
import 'package:http/http.dart' as http;

class PokemonProvider {
  // voir singleton ou injection de dépendance pour ne pas instancier à chaque fois un api service
  final ApiServices _apiServices = ApiServices.getApiServices();

  // créer dto conforme à objet api avant de créer le mien dans repository
  // faire sans http.response
  Future<List<PokemonType>> fetchPokemonTypes() {
    return _apiServices.fetch('types').then((response) {
      final List<dynamic> jsonResponse = response as List<dynamic>;
      return jsonResponse.map((jsonType) => PokemonType.fromJson(jsonType)).toList();
    });
  }

  /*
  Future<List<PokemonType>> fetchPokemonTypes() async {
    final response = await _apiServices.fetch('types');
    final List<dynamic> jsonResponse = json.decode(response.body);
    return jsonResponse.map((json) => PokemonType.fromJson(json)).toList();
  }
  */

  Future fetchPokemonByType(String type) {
    return _apiServices.fetch('pokemon/type/$type');
  }
}
