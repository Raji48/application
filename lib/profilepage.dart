import'package:flutter/material.dart';
import 'package:homepage/main_drawer.dart';


class ProfilePage extends StatefulWidget{
  _ProfilePageState createState()=>_ProfilePageState();

}

class _ProfilePageState extends State<ProfilePage> {

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
      backgroundColor: Colors.white,
       resizeToAvoidBottomPadding: false,
      appBar: AppBar(title: Text("Profile "),


      ),
      drawer: MainDrawer(),
      body:GestureDetector(
      onTap: (){
      FocusScope.of(context).unfocus();
      },

      child:Container(
        alignment: Alignment.center,
         child:SingleChildScrollView(
        child: Column(

            children: <Widget>[

              Padding(
                padding: EdgeInsets.only(bottom: 1, left: 350),
                child: CircleAvatar(
                  backgroundColor: Colors.black54,
                  child: IconButton(

                    icon: Icon(Icons.edit, color: Colors.white,),

                    onPressed: () {



                    },
                  ),
                ),

              ),
               //new listTile(
                        // title:new Text(_name),),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                height: 100,
                margin: EdgeInsets.only(
                    top: 1,
                    bottom: 20
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(

                      image: NetworkImage(
                          'https://images.all-free-download.com/images/graphiclarge/girl_205263.jpg')

                  ),
                ),

              ),


              //  Text("Hello"),
              Container(

                height: 450,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(

                  children: [
                    textfield(
                      hintText: "Name",

                    ),

                     textfield(
                      hintText: "Surname",
                    ),
                    textfield(
                      hintText: "Email",
                    ),
                    textfield(
                      hintText: "Mobile",
                    ),
                    textfield(
                      hintText: "Password",
                    ),


                    Container(

                      height: 50,
                      width: 100,
                      child: RaisedButton(
                        // onPressed: () {},
                         color: Colors.blue,
                        child: Center(
                          child: Text("Save", style: TextStyle(fontSize: 23,
                            color: Colors
                                .black,),
                          ),
                        ),
                        onPressed: () {

                        },
                      ),
                    ),


                  ],
                ),
              ),

            ]
        ),
         ),
      ),
      ),
    );
  }
  


}


