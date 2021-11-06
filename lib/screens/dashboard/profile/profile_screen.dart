import 'package:flutter/material.dart';
import 'package:route_guard_example/main.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text(
            'This is the profile screen',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          TextButton(
            onPressed: () {
              MyApp.of(context).authService.authenticated = false;
            },
            child: const Text('Logout'),
          )
        ],
      ),
    ));
  }
}
