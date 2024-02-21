import 'package:bloc_tutorial/services/api_services.dart';
import 'package:flutter/material.dart';

class PokemonService {
  final ApiServices _apiServices = ApiServices.getApiServices();

  List<String> pokemonType(List<dynamic> jsonArray) {
    return jsonArray.map((json) => json['name'] as String).toList();
  }

  Future fetch(String path) {
    return _apiServices.fetch(path);
  }

  void showModal(BuildContext context, List<String> contents) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children:
                  contents.map((String content) => Text(content)).toList(),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Fermer'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
