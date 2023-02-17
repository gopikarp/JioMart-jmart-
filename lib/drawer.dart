import 'package:flutter/material.dart';
import 'package:jmart_app/home/l&s/login.dart';
import 'package:jmart_app/processing.dart';

class drawer extends StatelessWidget {
  // const drawer({Key? key}) : super(key: key);
  // final String text;
  // drawer({
  //   required this.text,
  // });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        // padding: EdgeInsets.zero,
        children: [
          Container(
            height: 60,
            child: DrawerHeader(
              margin: EdgeInsets.only(
                bottom: 6.0,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: Text(
                      'Hello, Adhithi   ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          list(
            context,
            'Home',
            Icons.home,
            () {
              Navigator.pop(context);
            },
          ),
          list(
            context,
            'Shope by category',
            Icons.apps,
            () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => processing(),
                ),
              );
            },
          ),
          list(
            context,
            'My orders',
            Icons.receipt_long_outlined,
            () {
              Navigator.pop(context);
            },
          ),
          list(
            context,
            'My list',
            Icons.list,
            () {
              Navigator.pop(context);
            },
          ),
          list(
            context,
            'My Account',
            Icons.person,
            () {
              Navigator.pop(context);
            },
          ),
          list(
            context,
            'JMart Gift card',
            Icons.card_giftcard,
            () {
              Navigator.pop(context);
            },
          ),
          list(
            context,
            'All offers',
            Icons.local_offer_outlined,
            () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            subtitle: Text('Help and Support'),
          ),
          list(
            context,
            'Customer service',
            Icons.headset_mic_outlined,
            () {
              Navigator.pop(context);
            },
          ),
          list(
            context,
            'Guid',
            Icons.messenger_outline,
            () {},
          ),
          list(
            context,
            'Sign Out',
            Icons.logout_rounded,
            () {
              Navigator.pushAndRemoveUntil(
                  context,
                  PageRouteBuilder(pageBuilder: (BuildContext context,
                      Animation animation, Animation secondaryAnimation) {
                    return login();
                  }, transitionsBuilder: (BuildContext context,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation,
                      Widget child) {
                    return new SlideTransition(
                      position: new Tween<Offset>(
                        begin: const Offset(1.0, 0.0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    );
                  }),
                  (Route route) => false);
            },
          ),
        ],
      ),
    );
  }

  list(BuildContext context, String text, IconData ic, void Function() tap) {
    return ListTile(
        leading: Icon(
          ic,
          color: Colors.black,
        ),
        title: Text(
          text,
          style: TextStyle(color: Colors.black),
        ),
        onTap: tap);
  }
}
