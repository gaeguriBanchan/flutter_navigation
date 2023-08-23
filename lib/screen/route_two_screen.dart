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
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              '/three',
              arguments: 999,
            );
          },
          child: const Text('push named'),
        ),
        // ElevatedButton(
        //   onPressed: () {
        //     Navigator.of(context).pushReplacement(
        //       MaterialPageRoute(
        //         builder: (context) => const RouteThreeScreen(),
        //       ),
        //     );
        //   },
        //   child: const Text('push replacement'),
        // ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(
              '/three',
            );
          },
          child: const Text('push replacement'),
        ),
        // ElevatedButton(
        //   onPressed: () {
        //     Navigator.of(context).pushAndRemoveUntil(
        //         MaterialPageRoute(
        //           builder: (context) => const RouteThreeScreen(),
        //         ),
        //         (route) => route.settings.name == '/');
        //   },
        //   child: const Text('push and remove until'),
        // ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
                '/three',
                // route 값을 false 로 하면 route를 지움
                // 각 route에 결과값에 따라 적용된다

                // 모든 route 지움
                // (route) => false);

                // '/' 제외한 route 지움
                (route) => route.settings.name == '/');
          },
          child: const Text('push and remove until'),
        ),
      ],
    );
  }
}
