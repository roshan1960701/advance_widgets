import 'package:advance_tools/Provider/myData.dart';
import 'package:advance_tools/myState.dart';
import 'package:flutter/material.dart';
import 'package:advance_tools/homePage.dart';
import 'package:advance_tools/newIcons.dart';
import 'package:provider/provider.dart';
import 'package:advance_tools/Provider/myData.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<myData>(
      create: (context) => myData(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepOrange
        ),

        home: myState(),
      ),
    );
  }
}
