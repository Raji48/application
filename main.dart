import 'package:flutter/material.dart';
import 'package:homepage/login_page.dart';


void main() {
  runApp(MyApp()

  );
}
class MyApp extends StatefulWidget{
  _MyAppState createState()=>_MyAppState();

}

class _MyAppState extends State<MyApp> {
  @override


  Widget build(BuildContext context) {
    return MaterialApp(

     home:LoginPage(),

    );
  }
}
