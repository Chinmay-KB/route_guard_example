import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:route_guard_example/routes/router.gr.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AutoRouter.of(context).push(const AddProductsRoute());
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) =>
              Center(child: Text('This is item #$index'))),
    );
  }
}
