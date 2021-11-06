import 'package:auto_route/auto_route.dart';
import 'package:route_guard_example/screens/login/login_screen.dart';
import 'package:route_guard_example/util/auth_service.dart';

class RouteGuard extends AutoRedirectGuard {
  final AuthService authService;

  RouteGuard(this.authService) {
    authService.addListener(() {
      if (!authService.authenticated) {
        // should be called when the logic effecting this guard changes
        // e.g when the user is no longer authenticated
        reevaluate();
      }
    });
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authService.authenticated) return resolver.next();
    // router.push(
    //   LoginScreen(onLoginCallback: (_){

    //   })
    // );
  }
}
