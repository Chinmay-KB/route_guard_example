import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:route_guard_example/routes/router.gr.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        ProductsRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
          onTap: tabsRouter.setActiveIndex,
          currentIndex: tabsRouter.activeIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Products',
              icon: Icon(
                Icons.category,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(
                Icons.person,
              ),
            ),
          ]),
    );
  }
}
