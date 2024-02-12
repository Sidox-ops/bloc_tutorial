import 'package:bloc_tutorial/cubit/pokemon_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  final pokemonCubit = PokemonCubit();
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
      body: BlocBuilder(
          bloc: pokemonCubit,
          builder: (context, pokemon) {
            final pokemonList = pokemonCubit.state;
            return ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                title: Text(pokemonList[index].name),
              );
            });
          }),
    );
  }
}
