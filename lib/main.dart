import 'package:flutter/material.dart';
import 'package:space_explorer/screens/home_screen.dart';
import 'package:space_explorer/screens/login_screen.dart';
import 'package:space_explorer/screens/planet_details_screen.dart';
import 'package:space_explorer/models/planet.dart';

void main() {
  runApp(const SpaceExplorerApp());
}

class SpaceExplorerApp extends StatelessWidget {
  const SpaceExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space Explorer',
      theme: ThemeData.dark().copyWith(
        textTheme: ThemeData.dark().textTheme.apply(fontFamily: 'SpaceFont'),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/planet':
            (context) => PlanetDetailsScreen(
              planet: ModalRoute.of(context)!.settings.arguments as Planet,
            ),
      },
    );
  }
}
