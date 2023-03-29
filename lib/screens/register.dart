
import 'package:college_app/main.dart';
import 'package:college_app/screens/login.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  TextEditingController name=TextEditingController();
  TextEditingController reg=TextEditingController();
  TextEditingController add=TextEditingController();
  TextEditingController college=TextEditingController();
  TextEditingController uname=TextEditingController();
  TextEditingController pass=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.limeAccent,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("REGISTER HERE...."),
        ),
        body: SingleChildScrollView(
          child:
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_box,color: Colors.red,size: 30,),
                      labelText: "ENTER NAME",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: reg,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.numbers_outlined,color: Colors.red,size: 30,),
                      labelText: "REGISTER NUMBER",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: add,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.numbers_outlined,color: Colors.red,size: 30,),
                      labelText: "ADMISSION NUMBER",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: college,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.school,color: Colors.red,size: 30,),
                      labelText: "COLLEGE NAME",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: uname,
                  decoration: InputDecoration(

                    prefixIcon: Icon(Icons.account_box,color: Colors.red,size: 30,),
                    labelText: "USERNAME",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: pass,
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock,color: Colors.red,size: 30,),
                      labelText: "PASSWORD",

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )
                  ),),
                SizedBox(height: 20,),
                SizedBox(height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        )
                    ),
                    onPressed: (){

                      var getName=name.text;
                      var getReg=reg.text;
                      var getAdd=add.text;
                      var getCollege=college.text;
                      var getUsername=uname.text;
                      var getPassword=pass.text;

                      print(getName);
                      print(getReg);
                      print(getAdd);
                      print(getCollege);
                      print(getUsername);
                      print(getPassword);
                    },
                    child: Text("REGISTER",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                      ),),

                  ),),
                SizedBox(height: 20,),
              SizedBox(height: 50,
              width: double.infinity,
              child:
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
                  onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));

                  },
                  child:
              Text("Already user go to login....",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 20,
              ),)),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
