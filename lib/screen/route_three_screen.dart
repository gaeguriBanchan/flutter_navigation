import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';

class RouteThreeScreen extends StatelessWidget {
  const RouteThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(title: 'Route Three', children: [
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
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).maybePop();
        },
        child: const Text('maybePop'),
      ),
    ]);
  }
}
