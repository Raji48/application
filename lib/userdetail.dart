import 'package:flutter/material.dart';

class Userdetail extends StatefulWidget{
  _UserdetailState createState()=>_UserdetailState();

}

class _UserdetailState extends State<Userdetail> {
  @override


  Widget build(BuildContext context) {
    return new Scaffold(

        appBar: AppBar(
        centerTitle: true,
        title: Text("User List"),


    ),
        body:
    Center(
      child: Column(
      children: [
        //Text(support[index].url ,style: TextStyle(fontSize: 20,color: Colors.black,),),
      ]),
    ),

    );
  }
  }