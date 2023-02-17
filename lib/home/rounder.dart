import 'package:flutter/material.dart';

class rounder extends StatelessWidget {
  final String disimg;
  final String name;
  rounder({
    required this.disimg,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 6),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 243, 235, 235), width: 6),
                  shape: BoxShape.circle),
              child: Material(
                elevation: 19,
                shape: CircleBorder(),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  onTap: () {},
                  child: Ink.image(
                    image: AssetImage(disimg),
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 16,
          top: 59,
          child: Text(
            name,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
