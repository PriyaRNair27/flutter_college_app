
import 'package:college_app/screens/contact.dart';
import 'package:college_app/screens/home.dart';
import 'package:college_app/screens/profile.dart';
import 'package:flutter/material.dart';
class tabview extends StatelessWidget {
  const tabview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text("whatsupp"),
            backgroundColor: Colors.greenAccent,
              bottom: TabBar(
                  tabs:[
                    Tab(text: "home",icon: Icon(Icons.home),),
                    Tab(text: "contact",icon: Icon(Icons.contact_phone),),
                    Tab(text: "profile",icon: Icon(Icons.account_box),),
                  ]
              ),
            ),
            body: TabBarView(
                children: [
                  home(),
                  contact(),
                  profile()

                ]),
          )),
    );
  }
}
