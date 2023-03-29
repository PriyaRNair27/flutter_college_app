import 'package:college_app/screens/login.dart';
import 'package:college_app/screens/menu.dart';
import 'package:college_app/screens/register.dart';
import 'package:college_app/screens/sideviewbar.dart';
import 'package:college_app/screens/tabview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(sideview());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text("College App"),
        ),
        body:menu() ,
      ),
    );
  }
}
