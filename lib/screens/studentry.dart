import 'package:college_app/screens/mydrawer.dart';
import 'package:flutter/material.dart';
class stud extends StatelessWidget {
  const stud({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: mydrawer( ),
        body: Container(
          child: Center(child: Text("student entry..."),)
        ),
      ),
    );
  }
}
