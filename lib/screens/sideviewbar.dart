import 'package:college_app/screens/mydrawer.dart';
import 'package:flutter/material.dart';

class sideview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: mydrawer(),
        body: Container(
          child: Center(child: Text("profile page")),
        ),
      ),
    );
  }
}
