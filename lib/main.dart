import 'package:bloc_tutorial/cubit/pokemon_cubit.dart';
import 'package:bloc_tutorial/pages/home_page.dart';
import 'package:bloc_tutorial/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final routes = MyRoutes();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokemonCubit(),
      child: MaterialApp.router(
        routerConfig: routes.router,
      ),
    );
  }
}
