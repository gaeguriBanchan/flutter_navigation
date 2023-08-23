import 'package:flutter/material.dart';
import 'package:flutter_navigation/screen/home_screen.dart';
import 'package:flutter_navigation/screen/route_one_screen.dart';
import 'package:flutter_navigation/screen/route_three_screen.dart';
import 'package:flutter_navigation/screen/route_two_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/one': (context) => const RouteOneScreen(),
        '/two': (context) => const RouteTwoScreen(),
        '/three': (context) => const RouteThreeScreen(),
      },
    );
  }
}
