import 'package:flutter/material.dart';
import 'package:jmart_app/processing.dart';

class rectangle extends StatelessWidget {
  // const rectangle({Key? key}) : super(key: key);
  final String img;
  final String text;

  rectangle({
    required this.img,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 0, horizontal: 6),
          decoration: BoxDecoration(
            border:
                Border.all(color: Color.fromARGB(54, 233, 207, 207), width: 9),
          ),
          child: Material(
            elevation: 19,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => processing(),
                  ),
                );
              },
              child: Ink.image(
                image: AssetImage(img),
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          left: 16,
          top: 59,
          child: Text(
            text,
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
