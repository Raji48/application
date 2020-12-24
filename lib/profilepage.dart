import 'dart:io';

import'package:flutter/material.dart';
import 'package:homepage/main_drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:homepage/view.dart';
import 'package:image_picker/image_picker.dart';

SharedPreferences localStorage;
class ProfilePage extends StatefulWidget{

  _ProfilePageState createState()=>_ProfilePageState();


}

class _ProfilePageState extends State<ProfilePage> {
  bool x=false,y=true;
  bool enab=false;


  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  final _username =new TextEditingController();
  final _Sname =new TextEditingController();
  final _email =new TextEditingController();
  final _mobile =new TextEditingController();
  final _pass = new TextEditingController();







  saveData() async{
    final localStorage = await SharedPreferences.getInstance();
    localStorage.setString('nameuser',_username.text.toString() );
    localStorage.setString('sname',_Sname.text.toString() );
    localStorage.setString('mail',_email.text.toString() );
    localStorage.setString('mobilenum',_mobile.text.toString() );
    localStorage.setString('passuser',_pass.text.toString() );

    String nameuser = localStorage.getString("nameuser");
    String sname = localStorage.getString("sname");
    String mail = localStorage.getString("mail");
    String mobilenum = localStorage.getString("mobilenum");
    String passuser = localStorage.getString("passuser");

    if(_username.text == "" && _Sname.text == "" && _email.text =="" && _mobile.text =="" && _pass.text =="" ) {
      print("invalid");  }
    else {
      Navigator.of(context).push(MaterialPageRoute(builder:
          (context) =>
          View(name: nameuser,
            suname: sname,
            umail: mail,
            umobilenum: mobilenum,
            pass: passuser,),),

      );

    }

    //(context, MaterialPageRoute(builder: (context)=>Nav(),),

    return MaterialPageRoute(builder: (_) => MainDrawer(name: nameuser) );

  }



  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          title: Text("Profile "),

          actions: <Widget>[
            y ? Positioned(


              child:Align(
                alignment: Alignment.topRight,
                child: FlatButton.icon(onPressed: (){

                  setState(() {
                    x=!x;
                  });
                  setState(() {
                    y=!y;
                  });
                  setState(() {
                    enab=!enab;
                  });

                },
                  icon:Icon(Icons.edit),
                  label:Text("edit"), ),

              ),
            ): Container(),

          ],
            ),

      drawer: MainDrawer(),
      body: GestureDetector(
        onTap: () {

          FocusScope.of(context).unfocus();

        },

        child: SafeArea(

          child: SingleChildScrollView(
            child: Column(

              children: <Widget>[




                 Container(
                  child: Stack(children: [
                    CircleAvatar(
                        radius: 70.0,
                                     backgroundImage:_imageFile == null ?   NetworkImage(
                            'https://images.all-free-download.com/images/graphiclarge/girl_205263.jpg')
                            :FileImage(File(_imageFile.path)),

                    ),
                    Positioned(
                      bottom: 20.0,
                      right: 20.0,
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: ((builder) => bottomSheet()),
                          );
                        },
                        child: Icon(
                            Icons.camera_alt, color: Colors.teal,
                            size: 28.0

                        ),
                      ),
                    ),

                  ],
                  ),
                ),




               Container(

                  height: 450,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),

                  child: Column(

                    children: [

                      TextFormField(
                       enabled:enab ,
                         controller: _username,
                        decoration: InputDecoration(
                          hintText :"Name",
                        ),
                      ),

                      TextFormField(

                        enabled:enab,
                         controller: _Sname,
                          decoration: InputDecoration(
                           hintText: "Surname",

                        ),

                      ),

                      TextFormField(
                        enabled: enab,
                        controller: _email,
                        decoration: InputDecoration(
                          hintText: "Email",
                        ),
                      ),
                      TextFormField(
                        enabled:enab,
                        controller: _mobile,
                        decoration: InputDecoration(
                          hintText: "Mobile number",
                        ),
                      ),
                      TextFormField(
                        enabled: enab,
                        controller: _pass,
                        decoration: InputDecoration(
                          hintText: "Password",
                        ),
                      ),


                      SizedBox(height: 40,),
                     // Column(
                        //children: <Widget>[

                          if (x) ButtonTheme(
                          //  SizedBox(height: 40,),
                            height: 50,
                              child: RaisedButton(
                              color: Colors.blue,
                              child: Center(
                                child: Text(
                                  "Save", style: TextStyle(fontSize: 23,
                                  color: Colors
                                      .black,),
                                ),


                              ),
                              onPressed: () {
                                saveData();
                                setState(() {
                                  x=!x;
                                });
                                setState(() {
                                  y=!y;
                                });


                              },

                            ),

                          ),Container()
                       // ],
                      //),
                       ],




                  ),

          )
            ],
      ),


            ),
          ),
      ),
     // drawer: MainDrawer(),
        );



  }


     Widget bottomSheet(){
      return Container(
          height:100.0,
          width:MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(
            horizontal:20,vertical: 20,
          ),
          child:Column(
            children:<Widget>[
              Text("Choose Profile Photo",style:TextStyle(fontSize: 20),),
              SizedBox(
                height:20,
              ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                  // ButtonTheme(
                    //child:
                     FlatButton.icon(onPressed: (){
                       takePhoto(ImageSource.camera);
                     },
                           icon:Icon(Icons.camera),
                          label:Text("Camera"), ),
                FlatButton.icon(onPressed: (){
                  takePhoto(ImageSource.gallery);
                },
                  icon:Icon(Icons.image),
                  label:Text("Gallery"), ),

                ],
              ),
            ],
          )
      );
    }
    void takePhoto(ImageSource source) async{
     final pickedFile =await _picker.getImage(source: source,);
     setState(() {
       _imageFile = pickedFile;
     });

  }



}





