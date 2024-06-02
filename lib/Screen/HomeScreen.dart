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
    return Scaffold(
      appBar: AppBar(
        title:Text("Contact List") ,
        backgroundColor: Colors.blueGrey.shade500,
        titleSpacing: 100,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 1,
        centerTitle:true ,
      ),
      body: Container(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
