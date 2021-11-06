import 'package:auto_route/auto_route.dart';
import 'package:route_guard_example/screens/about/about_screen.dart';
import 'package:route_guard_example/screens/dashboard/dashboard_screen.dart';
import 'package:route_guard_example/screens/dashboard/products/add_products/add_products_screen.dart';
import 'package:route_guard_example/screens/dashboard/products/products_screen.dart';
import 'package:route_guard_example/screens/dashboard/profile/profile_screen.dart';
import 'package:route_guard_example/screens/home/home_screen.dart';
import 'package:route_guard_example/screens/login/login_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: LoginScreen, name: 'LoginRoute', path: 'login'),
    AutoRoute(
      page: HomeScreen,
      name: 'HomeRoute',
      path: '/',
    ),
    AutoRoute(
      page: DashboardScreen,
      name: 'DashboardRoute',
      path: 'dashboard',
      children: <AutoRoute>[
        AutoRoute(
          page: ProductsScreen,
          name: 'ProductsRoute',
          path: 'products',
          children: [
            AutoRoute(
                page: AddProductsScreen,
                name: 'AddProductsRoute',
                path: 'add_products'),
          ],
        ),
        AutoRoute(page: ProfileScreen, name: 'ProfileRoute', path: 'profile')
      ],
    ),
    AutoRoute(page: AboutScreen, name: 'AboutRouter', path: 'about')
  ],
)
class $AppRouter {}
