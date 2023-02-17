import 'package:flutter/material.dart';
import 'package:jmart_app/home/asset/images.dart';

class foot extends StatelessWidget {
  // const rectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 600,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset(aa),
          Image.asset(bb),
          Image.asset(bb),
          Image.asset(cc),
          Image.asset(dd),
        ],
      ),
    );
  }
}
