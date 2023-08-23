import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(
      title: 'Route Two',
      children: [
        Text(
          'argument: $argument',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('pop'),
        ),
      ],
    );
  }
}
