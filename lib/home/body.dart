import 'package:flutter/material.dart';
import 'package:jmart_app/home/asset/images.dart';

class body extends StatelessWidget {
  // const rectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset(a),
          Image.asset(b),
          Image.asset(c),
          Image.asset(d),
          Image.asset(e),
          Image.asset(f),
        ],
      ),
    );
  }
}
