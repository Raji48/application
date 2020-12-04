import'package:flutter/material.dart';
import 'package:homepage/main_drawer.dart';
class SettingsPage extends StatefulWidget{
  _SettingsPageState createState()=>_SettingsPageState();

}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar(title: Text("Settings Page"),


      ),
      drawer: MainDrawer(),
      body:
      Center(

        child:Column(
    children:<Widget>[
    Container(
    width:400,
    height:400,
    margin:EdgeInsets.only(
    top:60,
    bottom:40
    ),
          decoration:BoxDecoration(

            shape:BoxShape.circle,
      image:DecorationImage(
        image: NetworkImage('https://image.shutterstock.com/image-vector/coming-soon-vector-mystery-retail-260nw-614520563.jpg')
      )
          ),
    ),
    ]



      ),
      ),
    );
  }
}