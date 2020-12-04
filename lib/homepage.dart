import'package:flutter/material.dart';
import 'package:homepage/main_drawer.dart';
class HomePage extends StatefulWidget{
  _HomePageState createState()=>_HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar(title: Text("Home Page"),


      ),
      drawer: MainDrawer(),
      body:

         Center(

      child:  Text(
        "Welcome what can i help you?",//textAlign: TextAlign.center,
        style:TextStyle(color: Colors.black,fontSize: 20),),


          ),
    );
  }
}