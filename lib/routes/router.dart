import 'package:bloc_tutorial/pages/home_page.dart';
import 'package:bloc_tutorial/pages/list_page.dart';
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
          return const MaterialPage(child: List());
        })
  ]);
}
