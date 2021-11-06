// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i9;

import '../screens/about/about_screen.dart' as _i4;
import '../screens/dashboard/dashboard_screen.dart' as _i3;
import '../screens/dashboard/products/add_products/add_products_screen.dart'
    as _i8;
import '../screens/dashboard/products/products_screen.dart' as _i7;
import '../screens/dashboard/profile/profile_screen.dart' as _i6;
import '../screens/home/home_screen.dart' as _i2;
import '../screens/login/login_screen.dart' as _i1;
import 'route_guard.dart' as _i10;

class AppRouter extends _i5.RootStackRouter {
  AppRouter(
      {_i9.GlobalKey<_i9.NavigatorState>? navigatorKey,
      required this.routeGuard})
      : super(navigatorKey);

  final _i10.RouteGuard routeGuard;

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.LoginScreen(
              key: args.key, onLoginCallback: args.onLoginCallback));
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeScreen());
    },
    DashboardRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.DashboardScreen());
    },
    AboutRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.AboutScreen());
    },
    ProductsRoute.name: (routeData) {
      return _i5.MaterialPageX<_i5.EmptyRouterPage>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    ProfileRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ProfileScreen());
    },
    ProductsScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ProductsScreen());
    },
    AddProductsRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.AddProductsScreen());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(LoginRoute.name, path: 'login'),
        _i5.RouteConfig(HomeRoute.name, path: '/'),
        _i5.RouteConfig(DashboardRoute.name, path: '/dashboard', guards: [
          routeGuard
        ], children: [
          _i5.RouteConfig(ProductsRoute.name,
              path: 'products',
              parent: DashboardRoute.name,
              children: [
                _i5.RouteConfig(ProductsScreenRoute.name,
                    path: '', parent: ProductsRoute.name),
                _i5.RouteConfig(AddProductsRoute.name,
                    path: 'add_products', parent: ProductsRoute.name)
              ]),
          _i5.RouteConfig(ProfileRoute.name,
              path: 'profile', parent: DashboardRoute.name)
        ]),
        _i5.RouteConfig(AboutRouter.name, path: '/about')
      ];
}

/// generated route for [_i1.LoginScreen]
class LoginRoute extends _i5.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i9.Key? key, required dynamic Function(bool) onLoginCallback})
      : super(name,
            path: 'login',
            args: LoginRouteArgs(key: key, onLoginCallback: onLoginCallback));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, required this.onLoginCallback});

  final _i9.Key? key;

  final dynamic Function(bool) onLoginCallback;
}

/// generated route for [_i2.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for [_i3.DashboardScreen]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute({List<_i5.PageRouteInfo>? children})
      : super(name, path: '/dashboard', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for [_i4.AboutScreen]
class AboutRouter extends _i5.PageRouteInfo<void> {
  const AboutRouter() : super(name, path: '/about');

  static const String name = 'AboutRouter';
}

/// generated route for [_i5.EmptyRouterPage]
class ProductsRoute extends _i5.PageRouteInfo<void> {
  const ProductsRoute({List<_i5.PageRouteInfo>? children})
      : super(name, path: 'products', initialChildren: children);

  static const String name = 'ProductsRoute';
}

/// generated route for [_i6.ProfileScreen]
class ProfileRoute extends _i5.PageRouteInfo<void> {
  const ProfileRoute() : super(name, path: 'profile');

  static const String name = 'ProfileRoute';
}

/// generated route for [_i7.ProductsScreen]
class ProductsScreenRoute extends _i5.PageRouteInfo<void> {
  const ProductsScreenRoute() : super(name, path: '');

  static const String name = 'ProductsScreenRoute';
}

/// generated route for [_i8.AddProductsScreen]
class AddProductsRoute extends _i5.PageRouteInfo<void> {
  const AddProductsRoute() : super(name, path: 'add_products');

  static const String name = 'AddProductsRoute';
}
