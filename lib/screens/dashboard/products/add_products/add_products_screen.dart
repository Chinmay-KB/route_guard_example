import 'package:flutter/material.dart';

class AddProductsScreen extends StatelessWidget {
  const AddProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Here we can add new products',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
