import 'package:flutter/material.dart';
import 'package:jmart_app/home/l&s/splash.dart';

// import 'package:jmart_app/home/l&s/splash.dart';
const saveKey = 'logedin';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JMart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splash(),
    );
  }
}
