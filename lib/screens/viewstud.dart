

import 'package:flutter/material.dart';
class views extends StatelessWidget {
  var name=["anu","malu","ahana","sree","manu","lachu","urmila"];
  var phone=[98765463,90978654,39874567,983456876,34534567,456987667,2345677];
  var place=["pta","tvla","cngr","adoor","ekm","ktym","pld"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text("my contacts..."),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          child: ListView.builder(
              itemCount: name.length,
              itemBuilder:
          (context, index) {
            return Card(
                 child:
              ListTile(
                leading: Icon(Icons.account_box,size: 40,color: Colors.blueAccent,),
                title: Text(name[index]),
                subtitle: Text("mobile :"+ phone[index].toString() +"\n"+ "place :" + place[index]),
                trailing: Icon(Icons.dialer_sip,size: 40,color: Colors.pinkAccent,),
              ),
            );
          },)

        ),
      ),

    );
  }
}
