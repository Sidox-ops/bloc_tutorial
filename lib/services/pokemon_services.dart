import 'package:flutter/material.dart';

class PokemonService {
  List<String> pokemonType(List<dynamic> jsonArray) {
    return jsonArray.map((json) => json['name'] as String).toList();
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
