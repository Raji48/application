import'package:flutter/material.dart';
import 'package:homepage/main_drawer.dart';
class ProfilePage extends StatefulWidget{
  _ProfilePageState createState()=>_ProfilePageState();

}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget textfield({String hintText}){
    return Material(
      elevation: 5,
      shadowColor: Colors.grey,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child:TextField(
      decoration:InputDecoration(
        hintText:hintText,
        hintStyle: TextStyle(
          letterSpacing: 2,color:Colors.black,
          fontWeight: FontWeight.bold,
        ),
        fillColor:Colors.white,
        filled:true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:BorderSide.none
        ),
      ),
      ),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Profile "),


      ),
      drawer: MainDrawer(),
      body:
      Center(
        //alignment: Alignment.center,

        child: Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10
                ),
                decoration: BoxDecoration(

                   shape:BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/originals/24/50/5f/24505ff0464f44f9254b0cecab995d84.jpg')
                  ),
                ),

              ),


      Padding(
          padding:EdgeInsets.only(bottom:10,left:50),
          child:CircleAvatar(
          backgroundColor:Colors.black54,
          child:IconButton(

          icon:Icon(Icons.edit,color:Colors.white,),

         onPressed:(){ },
          ),
        ),
          ),

        Container(
            height:350,
            width:double.infinity,
            margin:EdgeInsets.symmetric(horizontal: 20),
            child:Column(
               children:[
              textfield(
                hintText:"Name",
              ),
              textfield(
                hintText:"Surname",
              ),
              textfield(
                hintText:"Email",
              ),
              textfield(
                hintText:"Mobile",
              ),
              textfield(
                hintText:"Password",
              ),


              Container(
                height:50,
                width:100,
                child:RaisedButton(
                  onPressed: (){},
                  color:Colors.black,
                  child:Center(
                    child:Text("Save",style:TextStyle(fontSize: 23,color:Colors.white,),
                    ),
                  ),
                ),
              ),
            ],
            ),
          ),

        ]
      ),
      ),
    );
  }
}