import 'package:flutter/material.dart';
import 'package:jmart_app/home/asset/images.dart';
import 'package:jmart_app/rectangle.dart';

class head2 extends StatelessWidget {
  const head2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: GridView.count(
        // physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(25),
        crossAxisCount: 3,
        children: [
          rectangle(img: fruits, text: 'veg & fru'),
          rectangle(img: bevarage, text: 'Bevarage'),
          rectangle(img: dia, text: 'Milk and diary'),
          rectangle(img: dress, text: 'Fation'),
          rectangle(img: br, text: 'Backery'),
          rectangle(img: mobile, text: 'Electronics'),
          rectangle(img: kichen, text: 'Kichen'),
          rectangle(img: home, text: 'Cleaning'),
          rectangle(img: personalca, text: 'Personal care'),
        ],
      ),
    );
  }
}
