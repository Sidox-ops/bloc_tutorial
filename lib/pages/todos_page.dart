import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

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
          title: const Text("Liste des Todos"),
        ),
        //body:
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            GoRouter.of(context).go('/add-todo');
          },
          tooltip: "Add Todo",
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: const Icon(Icons.add),
        ));
  }
}
