import 'package:flutter/material.dart';
import 'package:route_guard_example/routes/route_guard.dart';
import 'package:route_guard_example/routes/router.gr.dart';
import 'package:route_guard_example/screens/home/home_screen.dart';
import 'package:route_guard_example/util/auth_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  static MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<MyAppState>()!;

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final authService = AuthService();

  late final _appRouter = AppRouter(routeGuard: RouteGuard(authService));

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate());
  }
}
