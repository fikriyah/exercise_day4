import 'package:flutter/material.dart';
import 'Layout.dart';
import 'package:flutter/cupertino.dart';



void main() {
  runApp(MyApp(

  ));
}

class MyApp extends StatefulWidget {
 

  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Layout(),
    );
  }
}

