import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:route_guard_example/routes/router.gr.dart';
import 'package:route_guard_example/screens/dashboard/dashboard_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Home'),
      floatingActionButton: FloatingActionButton(onPressed: () {
        AutoRouter.of(context).push(DashboardRoute());
      }),
    );
  }
}
