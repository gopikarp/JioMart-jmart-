import 'package:flutter/material.dart';
import 'package:jmart_app/body2.dart';
import 'package:jmart_app/drawer.dart';

import 'package:jmart_app/home/asset/head2.dart';
import 'package:jmart_app/home/body.dart';
import 'package:jmart_app/home/foot.dart';
import 'package:jmart_app/home/head.dart';
import 'package:jmart_app/processing.dart';

class homeScreen extends StatefulWidget {
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int val = 0;
  final List<Widget> _page = [
    homeScreen(),
    processing(),
    processing(),
    processing(),
    homeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   // drawer: Drawer(
      drawer: Drawer(child: drawer()),
      bottomNavigationBar: _BottomBar(),

      appBar: AppBar(
        leading: Column(
          children: [
            Builder(
              builder: (context) => // Ensure Scaffold is in context
                  IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () => Scaffold.of(context).openDrawer()),
            ),
          ],
        ),
        toolbarHeight: 120.0,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 70, left: 80),
          child: Text(
            'JMart',
          ),
        ),
        actions: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.mic),
                ),
              ),
            ],
          ),
        ],
        flexibleSpace: Container(
          padding: EdgeInsets.only(top: 58, left: 22, right: 36, bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 3),
              ),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.list),
                  VerticalDivider(
                    thickness: 4,
                    indent: 9,
                    endIndent: 9,
                  ),
                  Icon(Icons.qr_code),
                  SizedBox(
                    width: 8,
                  )
                ],
              ),
              prefixIcon: Icon(Icons.search),
              hintText: 'Search',
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Divider(
              thickness: 10,
              color: Color.fromARGB(255, 221, 208, 208),
            ),
            Image.asset("assets/shop/h.png"),
            head(),
            Image.asset("assets/shop/h2.png"),
            space(),
            body(),
            space(),
            body2(),
            space(),
            space(),
            text(),
            head2(),
            space(),
            foot(),
          ],
        ),
      ),
    );
  }

  _BottomBar() {
    return BottomNavigationBar(
      currentIndex: val,
      onTap: (value) {
        setState(() {
          print(val = value);
        });
      },
      type: BottomNavigationBarType.fixed,
      // unselectedLabelStyle: TextStyle(color: Colors.red),
      // backgroundColor: Colors.yellow,
      fixedColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            // color: Colors.grey,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.apps_sharp,
            ),
            label: 'All Catogery'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            label: 'Shop'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.perm_phone_msg,
            ),
            label: 'Help'),
      ],
    );
  }

  Widget space() {
    return SizedBox(
      height: 8,
    );
  }

  text() {
    return Center(
      child: Text(
        'Shop From Top Catogarys',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
