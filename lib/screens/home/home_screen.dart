import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:route_guard_example/routes/router.gr.dart';
import 'package:route_guard_example/screens/dashboard/dashboard_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to route guard example',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                TextButton(
                  onPressed: () {
                    AutoRouter.of(context).push(const DashboardRoute());
                  },
                  child: Text(
                    'Go to dashboard',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    AutoRouter.of(context).push(const AboutRouter());
                  },
                  child: Text(
                    'About page',
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
