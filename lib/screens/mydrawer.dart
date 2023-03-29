import 'package:college_app/screens/sideviewbar.dart';
import 'package:college_app/screens/studentry.dart';
import 'package:flutter/material.dart';
class mydrawer extends StatelessWidget {
  const mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueGrey

            ),
            currentAccountPicture:
            CircleAvatar(
              backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819__340.jpg"),
            ),
              accountName: Text("priya"),
              accountEmail: Text("priya@gmail.com")),
          Divider(color: Colors.black,),

          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>sideview()));
            },
            trailing: Icon(Icons.account_box),
            title: Text("profile"),
          ),

          Divider(color: Colors.black,),
     ListTile(
       onTap: (){

         Navigator.push(context, MaterialPageRoute(builder: (context)=>stud()));
       },

    trailing: Icon(Icons.contact_phone),
      title: Text("contact"),
    )
        ],
      ),
    );
  }
}
