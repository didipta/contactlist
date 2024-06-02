import 'package:contactlist/Entity/Contact.dart';
import 'package:contactlist/Utils/commonfunction.dart';
import 'package:contactlist/Widget/AddContactlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();



}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    List<Contact> contacts=[];

    _addContat(String name,String number){
      print(name + number);

      setState(() {
        addContact(contacts, name, number);
      });

      print(contacts.length.toString());

    }
    return Scaffold(
      appBar: AppBar(
        title:Text("Contact List",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w900
        ),) ,
        backgroundColor: Colors.blueGrey.shade500,
        titleSpacing: 100,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 1,
        centerTitle:true ,
      ),
      body: Container(
        width: width,
        color: Colors.blueGrey.shade100,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
               AddContact(addcontact:_addContat),
            Text(contacts.length.toString())
          ],
        ),
      ),
    );
  }
}
