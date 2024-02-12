import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class PokemonCubit extends Cubit {
  PokemonCubit() : super({});

  Future<http.Response> getPokemon() {
    return http.get(Uri.parse('https://pokebuildapi.fr/api/v1/pokemon'));
  }
}
