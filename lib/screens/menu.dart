

import 'package:college_app/main.dart';
import 'package:college_app/screens/AddStud.dart';
import 'package:college_app/screens/login.dart';
import 'package:college_app/screens/navigation.dart';
import 'package:college_app/screens/register.dart';
import 'package:college_app/screens/viewstud.dart';
import 'package:flutter/material.dart';


class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(height: 20,),
          SizedBox(height: 30,
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },

                child:
                Text("login")

            ),),
          SizedBox(height: 20,),
          SizedBox(height: 30,
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                },

                child:
                Text("Register")

            ),),
          SizedBox(height: 20,),
          SizedBox(height: 30,
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>addstud()));
                },

                child:
                Text("Add Student")

            ),),
          SizedBox(height: 20,),
          SizedBox(height: 30,
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>views()));
                },

                child:
                Text("View ")

            ),),
          SizedBox(height: 20,),SizedBox(height: 30,
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>navbar()));
                },

                child:
                Text("NAVBAR ")

            ),),

        ],
      ),
    );
  }
}
