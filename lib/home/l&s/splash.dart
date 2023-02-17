import 'package:flutter/material.dart';
import 'package:jmart_app/home/l&s/login.dart';
import 'package:jmart_app/homeScreen.dart';
import 'package:jmart_app/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:show_up_animation/show_up_animation.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // checklogin();
    loginpage();
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ShowUpAnimation(
          delayStart: Duration(seconds: 0),
          animationDuration: Duration(seconds: 3),
          curve: Curves.easeInCubic,
          direction: Direction.vertical,
          offset: 16.5,
          child: Text(
            'JMart',
            style: TextStyle(
              fontSize: 55,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> loginpage() async {
    await Future.delayed(
      Duration(seconds: 9),
    );
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: ((context) => login()),
      ),
    );
  }

  // Future<void> checklogin() async {
  //   final sharedpref = await SharedPreferences.getInstance();
  //   final userloggedin = sharedpref.getBool(saveKey);
  //   if (userloggedin == null || userloggedin == false) {
  //     loginpage();
  //   } else {
  //     Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(builder: ((context) => homeScreen())),
  //     );
  //   }
  // }
}
