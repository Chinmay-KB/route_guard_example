import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text(
        'This is our about screen',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ));
  }
}
