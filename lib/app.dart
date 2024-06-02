import 'package:contactlist/Screen/HomeScreen.dart';
import 'package:contactlist/Utils/Themedata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contactapp extends StatelessWidget {
  const Contactapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MaterialApp(
     home:HomeScreen(),
      theme: themeData(theme),
      debugShowCheckedModeBanner: false,
    );
  }
}
