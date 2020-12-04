import 'package:flutter/material.dart';
import 'package:homepage/nav.dart';


class LoginPage extends StatefulWidget{
  _LoginPageState createState() => _LoginPageState();

}
class _LoginPageState extends State<LoginPage>{
  Widget build(BuildContext context){
    return Scaffold(
      body:SafeArea(
        child: ListView(
          padding:EdgeInsets.symmetric(horizontal: 80.0),
          children: <Widget>[
            Column(
              children: <Widget>[

                SizedBox(height:40,),
                Text("Welcome To",
                  style:TextStyle(fontSize: 35,color:Colors.green,fontWeight:FontWeight.bold),)
              ],
            ),

            Column(
              children: <Widget>[

                SizedBox(height:40,),
                Text("login",
                  style:TextStyle(fontSize: 25,  color:Colors.green),)

              ],
            ),
            SizedBox(height: 40,),
            TextField(
              decoration:InputDecoration(
                labelText:"Email",labelStyle:TextStyle(fontSize: 20),
                filled:true,
              ),
            ),
            SizedBox(height: 40,),
            TextField(
              obscureText:true,
              decoration:InputDecoration(
                labelText:"Password",labelStyle:TextStyle(fontSize: 20),
                filled:true,
              ),
            ),
            SizedBox(height: 40,),
            Column(
              children:<Widget>[
                ButtonTheme(
                  height:50,
                  disabledColor:Colors.green,
                  child:RaisedButton(

                    child:Text("submit",
                        style:TextStyle(fontSize:25,color:Colors.green)

                    ),
                    color:new Color(4657784547656785558) ,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Nav(),),
                      );
                      
                    },
                  ),
                ),

              ],
            ),
          ],
        ),

      ),
    );
  }

}
