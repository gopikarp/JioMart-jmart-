// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:jmart_app/homeScreen.dart';
// import 'package:jmart_app/main.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _key = GlobalKey<FormState>();
  final name = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // double h = MediaQuery.of(context).size.height;
    // double w = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        // padding: EdgeInsets.all(110.0),
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/login.jpeg'),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 140, left: 25, right: 25),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 76,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Form(
                    key: _key,
                    child: Column(
                      children: [
                        TextFormField(
                          // validator: (_) {
                          //   if (datamatch) {
                          //     return null;
                          //   } else {
                          //     return "error";
                          //   }
                          // },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'value is empty';
                            } else {
                              return null;
                            }
                          },
                          controller: name,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Colors.white,
                            ),
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        TextFormField(
                          obscureText: true,
                          // validator: (value) {
                          //   if (datamatch) {
                          //     return null;
                          //   } else {
                          //     return "error";
                          //   }
                          // },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'value is empty';
                            } else {
                              return null;
                            }
                          },
                          controller: password,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            hintText: "password",
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 170),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'forget password ?',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.yellow,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                          onPressed: () {
                            if (_key.currentState!.validate()) {
                              checklogin(context);
                            } else {
                              print('Value is Empty');
                            }
                          },
                          child: Text(
                            'Login to account',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 590, left: 46),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "don't have an account ?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Creat an account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  checklogin(BuildContext context) async {
    final username = name.text;
    final passwords = password.text;
    if (username == passwords) {
      print('username and password match');

      // final SharedPre = await SharedPreferences.getInstance();
      // await SharedPre.setBool(saveKey, true);

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return homeScreen();
          },
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text('Username and password dosnt match'),
          backgroundColor: Colors.red,
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        ),
      );
    }
  }
}
