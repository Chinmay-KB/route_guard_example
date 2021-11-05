// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../screens/about/about_screen.dart' as _i3;
import '../screens/dashboard/dashboard_screen.dart' as _i2;
import '../screens/dashboard/products/add_products/add_products_screen.dart'
    as _i6;
import '../screens/dashboard/products/products_screen.dart' as _i4;
import '../screens/dashboard/profile/profile_screen.dart' as _i5;
import '../screens/home/home_screen.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    DashboardRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DashboardScreen());
    },
    AboutRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AboutScreen());
    },
    ProductsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProductsScreen());
    },
    ProfileRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ProfileScreen());
    },
    AddProductsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.AddProductsScreen());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(HomeRoute.name, path: '/'),
        _i7.RouteConfig(DashboardRoute.name, path: 'dashboard', children: [
          _i7.RouteConfig(ProductsRoute.name,
              path: 'products',
              parent: DashboardRoute.name,
              children: [
                _i7.RouteConfig(AddProductsRoute.name,
                    path: 'add_products', parent: ProductsRoute.name)
              ]),
          _i7.RouteConfig(ProfileRoute.name,
              path: 'profile', parent: DashboardRoute.name)
        ]),
        _i7.RouteConfig(AboutRouter.name, path: 'about')
      ];
}

/// generated route for [_i1.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for [_i2.DashboardScreen]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute({List<_i7.PageRouteInfo>? children})
      : super(name, path: 'dashboard', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for [_i3.AboutScreen]
class AboutRouter extends _i7.PageRouteInfo<void> {
  const AboutRouter() : super(name, path: 'about');

  static const String name = 'AboutRouter';
}

/// generated route for [_i4.ProductsScreen]
class ProductsRoute extends _i7.PageRouteInfo<void> {
  const ProductsRoute({List<_i7.PageRouteInfo>? children})
      : super(name, path: 'products', initialChildren: children);

  static const String name = 'ProductsRoute';
}

/// generated route for [_i5.ProfileScreen]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute() : super(name, path: 'profile');

  static const String name = 'ProfileRoute';
}

/// generated route for [_i6.AddProductsScreen]
class AddProductsRoute extends _i7.PageRouteInfo<void> {
  const AddProductsRoute() : super(name, path: 'add_products');

  static const String name = 'AddProductsRoute';
}
