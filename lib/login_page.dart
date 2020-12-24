import 'package:flutter/material.dart';
import 'package:homepage/nav.dart';
import 'package:homepage/login_page.dart';
//import 'package:shared_preferences/shared_preferences.dart';

//SharedPreferences localStorage;


class LoginPage extends StatefulWidget{
  _LoginPageState createState() => _LoginPageState();


}
class _LoginPageState extends State<LoginPage>{

  Widget build(BuildContext context){
    TextEditingController emailController =new TextEditingController();
    TextEditingController pwdController =new TextEditingController();
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body:GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },

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
              controller: emailController,
              decoration:InputDecoration(
                labelText:"Email",labelStyle:TextStyle(fontSize: 20),
                filled:true,
              ),
            ),
            SizedBox(height: 40,),
            TextField(
              controller: pwdController,
              obscureText:true,
              decoration:InputDecoration(
                labelText:"Password", labelStyle:TextStyle(fontSize: 20),
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
                    onPressed:
                        (){

                          //Navigator.popAndPushNamed(context, '/Nav');
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Nav(),),);

                      
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


