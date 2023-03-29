
import 'package:college_app/screens/contact.dart';
import 'package:college_app/screens/home.dart';
import 'package:college_app/screens/login.dart';
import 'package:college_app/screens/profile.dart';
import 'package:college_app/screens/register.dart';
import 'package:college_app/screens/viewstud.dart';
import 'package:flutter/material.dart';

class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  int _myCurrentIndex=0;
  List mypages=[home(),contact(),profile()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

        ),
        body: mypages[_myCurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index)
          {
            setState(() {
              _myCurrentIndex=index;
            });
          },
            type: BottomNavigationBarType.shifting,

            currentIndex: _myCurrentIndex,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.redAccent,
                  icon: Icon(Icons.home,),
              label: "home"),
              BottomNavigationBarItem(
                backgroundColor: Colors.orangeAccent,
                  icon: Icon(Icons.contact_phone),
              label: "contact"),
              BottomNavigationBarItem(
                backgroundColor: Colors.pinkAccent,
                  icon: Icon(Icons.account_box),
              label: "userprofile")
            ]),
      ),
    );
  }
}
