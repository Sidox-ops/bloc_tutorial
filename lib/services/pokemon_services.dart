import 'package:flutter/material.dart';

class PokemonService {
  List<String> pokemonType(List<dynamic> jsonArray) {
    return jsonArray.map((json) => json['name'] as String).toList();
  }
}
