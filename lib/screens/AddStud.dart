import 'package:flutter/material.dart ';

 class addstud extends StatefulWidget {
   const addstud({Key? key}) : super(key: key);

   @override
   State<addstud> createState() => _addstudState();
 }

 class _addstudState extends State<addstud> {
   List studlist=[];
   List studroll=[];
   List studadd=[];
   List studmail=[];
   List studph=[];

   TextEditingController name=TextEditingController();
   TextEditingController roll=TextEditingController();
   TextEditingController add=TextEditingController();
   TextEditingController mail=TextEditingController();
   TextEditingController ph=TextEditingController();
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         backgroundColor: Colors.lightGreenAccent,
         appBar: AppBar(
           backgroundColor: Colors.amber,
           title: Text("ADD STUDENT"),
         ),
         body: SingleChildScrollView(
           child: Container(
             margin: EdgeInsets.all(20),
             child: Column(
               children: [
                 SizedBox(height: 20,),
                 TextField(
                   controller: name,
                   decoration: InputDecoration(
                     labelText: "name",
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20)
                     )
                   ),
                 ),
                 SizedBox(height: 20,),
                 TextField(
                   controller: roll,
                   decoration: InputDecoration(
                       labelText: "roll",
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20)
                       )
                   ),
                 ),
                 SizedBox(height: 20,),
                 TextField(
                   controller: add,
                   decoration: InputDecoration(
                       labelText: "address",
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20)
                       )
                   ),
                 ),
                 SizedBox(height: 20,),
                 TextField(
                   controller: mail,
                   decoration: InputDecoration(
                       labelText: "email",
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20)
                       )
                   ),
                 ),
                 SizedBox(height: 20,),
                 TextField(
                   controller: ph,
                   decoration: InputDecoration(
                       labelText: "phn num",
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20)
                       )
                   ),
                 ),
                 SizedBox(height: 20,),
                 SizedBox(height: 40,width: double.infinity,
                 child: ElevatedButton(
                     style: ElevatedButton.styleFrom(

                     ),
                     onPressed: (){
                       var getname=name.text;
                       var getroll=roll.text;
                       var getadd=add.text;
                       var getemail=mail.text;
                       var getph=ph.text;
                       setState(() {
                         studlist.add(getname);
                         studroll.add(getroll);
                         studadd.add(getadd);
                         studmail.add(getemail);
                         studph.add(getph);


                        name.text="";
                        roll.text="";
                        name.text="";


                        add.text="";
                        mail.text="";
                        ph.text="";


                       });
                       print(getname);
                       print(getroll);
                       print(getadd);
                       print(getemail);
                       print(getph);
                     },
                     child: Text("Add",style: TextStyle(color: Colors.redAccent,fontSize: 20),)
                 ),),
                 SizedBox(height: 20,),
                 SizedBox(height: 20,),

                 ListView.builder(
                   shrinkWrap: true,
                   itemCount: studlist.length==null ? 0 :studlist.length,
                   itemBuilder: (context, index) {

                     return Card(
                       child: ListTile(
                         leading: Icon(Icons.account_box,size: 30,color: Colors.pinkAccent,),
                         trailing: GestureDetector(
                           onTap: (){
                             print("delete.."+index.toString());
                             setState(() {
                               studlist.removeAt(index);
                               studroll.removeAt(index);
                               studadd.removeAt(index);
                               studmail.removeAt(index);
                               studph.removeAt(index);
                             });
                           },
                           child: Icon(
                             Icons.delete,size: 30,color: Colors.cyan,),
                         ),
                         title: Text(studlist[index]),
                         subtitle: Text("roll :" +studroll[index]+"\n"+"address :" +studadd[index]+"\n"
                             +"Email :" +studmail[index]+"\n"+"ph num :" +studph[index]),
                       ),
                     );
                   },)
               ],
             ),
           ),
         ),
       ),
     );
   }
 }
