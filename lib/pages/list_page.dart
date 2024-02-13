import 'package:bloc_tutorial/cubit/pokemon_cubit.dart';
import 'package:bloc_tutorial/services/pokemon_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  final pokemonCubit = PokemonCubit();
  final pokemonService = PokemonService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              GoRouter.of(context).go("/");
            },
          ),
          title: const Text("Liste des Pokemons"),
        ),
        body: Column(
          children: [
            TextButton(
              onPressed: () {
                pokemonCubit.getPokemonType();
              },
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(24.0),
                  backgroundColor: const Color.fromARGB(255, 106, 61, 255)),
              child: const Text(
                "Navigate to API fetch result",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 30),
            BlocBuilder(
                bloc: pokemonCubit,
                builder: (context, pokemon) {
                  final pokemonList = pokemonCubit.state;
                  return Expanded(
                    child: ListView.builder(
                        itemCount: pokemonList
                            .length, // Ajoutez itemCount pour définir le nombre d'éléments.
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Center(
                                child: GestureDetector(
                                    onTap: () {},
                                    child: Text(pokemonList[index]))),
                          );
                        }),
                  );
                })
          ],
        ));
  }
}
