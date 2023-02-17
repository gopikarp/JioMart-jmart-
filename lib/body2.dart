import 'package:flutter/material.dart';
import 'package:jmart_app/home/asset/images.dart';

class body2 extends StatelessWidget {
  // const rectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset(of),
          Image.asset(off),
        ],
      ),
    );
  }
}
