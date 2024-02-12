import 'package:bloc_tutorial/pages/home_page.dart';
import 'package:bloc_tutorial/routes/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final routes = MyRoutes();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routes.router,
    );
  }
}
