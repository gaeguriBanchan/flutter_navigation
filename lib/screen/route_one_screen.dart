import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';
import 'package:flutter_navigation/screen/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  const RouteOneScreen({super.key, this.number});

  final int? number;

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Route One',
      children: [
        Text(
          number.toString(),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(456);
          },
          child: const Text('pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => const RouteTwoScreen(),
                  settings: const RouteSettings(
                    arguments: 789,
                  )),
            );
          },
          child: const Text('push'),
        ),
      ],
    );
  }
}
