import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jmart_app/home/asset/images.dart';
import 'package:jmart_app/home/rounder.dart';

class head extends StatelessWidget {
  const head({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(10),
      height: 100,
      width: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              rounder(
                name: 'veg & fru',
                disimg: fruits,
              ),
              rounder(
                name: 'Bevarage',
                disimg: bevarage,
              ),
              rounder(
                name: 'Electronic',
                disimg: mobile,
              ),
              rounder(
                name: 'Personal',
                disimg: personalca,
              ),
              rounder(
                name: ' Backery',
                disimg: br,
              ),
              rounder(
                name: ' Fation',
                disimg: dress,
              ),
              rounder(
                name: ' KItchen',
                disimg: kichen,
              ),
            ],
          )
        ],
      ),
    );
  }
}
