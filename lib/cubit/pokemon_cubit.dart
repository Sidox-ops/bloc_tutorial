import 'dart:convert';
import 'package:bloc_tutorial/services/pokemon_services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class PokemonCubit extends Cubit {
  PokemonCubit() : super([]);

  static const String api = 'https://pokebuildapi.fr/api/v1/';
  Future<void> getPokemonType() async {
    try {
      final response = await http.get(Uri.parse('${api}types'));
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        final pokemonService = PokemonService();
        final pokemonTypes = pokemonService.pokemonType(jsonData);
        emit(pokemonTypes);
      } else {
        print('Failed to load pokemons');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> getPokemonByType(BuildContext context ,String type) async {
    try {
      final response = await http.get(Uri.parse('${api}pokemon/type/$type'));
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        final pokemonService = PokemonService();
        pokemonService.showModal(context, pokemonService.pokemonType(jsonData));
      } else {
        print('Failed to load pokemons');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
