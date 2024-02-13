import 'package:bloc_tutorial/pages/add_todo_page.dart';
import 'package:bloc_tutorial/pages/home_page.dart';
import 'package:bloc_tutorial/pages/list_page.dart';
import 'package:bloc_tutorial/pages/todos_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyRoutes {
  GoRouter router = GoRouter(routes: [
    GoRoute(
        path: '/',
        name: 'home',
        pageBuilder: (context, state) {
          return const MaterialPage(
              child: MyHomePage(
            title: "Demo : Routing - API - Cubit",
          ));
        }),
    GoRoute(
        path: '/liste',
        name: 'liste',
        pageBuilder: (context, state) {
          return const MaterialPage(child: MyList());
        }),
    GoRoute(
        path: '/todos',
        name: 'todos',
        pageBuilder: (context, state) {
          return const MaterialPage(child: TodoList());
        }),
    GoRoute(
        path: '/add-todo',
        name: 'add-todo',
        pageBuilder: (context, state) {
          return const MaterialPage(child: AddTodo());
        }),
  ]);
}
