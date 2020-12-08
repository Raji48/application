import'package:flutter/material.dart';
import 'package:homepage/main_drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:homepage/view.dart';

SharedPreferences localStorage;
class ProfilePage extends StatefulWidget{

  _ProfilePageState createState()=>_ProfilePageState();


}

class _ProfilePageState extends State<ProfilePage> {

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
    else{

      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
          (context)=>View(name: nameuser,suname:sname,umail:mail,umobilenum:mobilenum ,pass: passuser,),),
      );

    }

  }

  Widget textfield({String hintText}){
    return Material(
      elevation: 5,
      shadowColor: Colors.grey,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child:TextFormField(
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

        child:SafeArea(

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



                Container(

                  height: 450,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),

                  child: Column(

                    children: [
                      TextFormField(
                        controller:_username,
                        decoration: InputDecoration(
                          hintText: "Name",
                        ),
                      ),

                      TextFormField(
                        controller:_Sname,
                        decoration: InputDecoration(
                          hintText: "Surname",
                        ),
                      ),

                      TextFormField(
                        controller:_email,
                        decoration: InputDecoration(
                          hintText: "Email",
                        ),
                      ),
                      TextFormField(
                        controller:_mobile,
                        decoration: InputDecoration(
                          hintText: "Mobile number",
                        ),
                      ),
                      TextFormField(
                        controller:_pass,
                        decoration: InputDecoration(
                          hintText: "Password",
                        ),
                      ),


                      SizedBox(height: 40,),
                      Column(
                        children:<Widget>[
                          ButtonTheme(

                            height: 50,
                            //width: 100,
                            child: RaisedButton(
                              color: Colors.blue,
                              child: Center(
                                child: Text("Save", style: TextStyle(fontSize: 23,
                                  color: Colors
                                      .black,),
                                ),


                              ),
                              onPressed: (){
                                saveData();


                              },



                            ),

                          ),
                        ],
                      ),

                    ],

                  ),
                ),




              ],

              //  Text("hello ${widget.name}"),
            ),
          ),
        ),

      ),
    );
  }

}


