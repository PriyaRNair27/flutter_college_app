
import 'package:college_app/screens/register.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {

  TextEditingController uname=TextEditingController();
  TextEditingController pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
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


                    var getUsername=uname.text;
                    var getPassword=pass.text;


                    print(getUsername);
                    print(getPassword);
                  },
                  child: Text("LOGIN",
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
                        backgroundColor:  Colors.pink,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                    onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                    },
                    child: Text("New User go to Register...",
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 20,
                      ),)

                ),)
            ],
          ),
        ),
      ),
    );
  }
}
