import 'package:flutter/material.dart';

class processing extends StatelessWidget {
  const processing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Work in progress.....',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
