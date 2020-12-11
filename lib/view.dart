import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:homepage/homepage.dart';
import 'package:homepage/main_drawer.dart';
import 'package:homepage/profilepage.dart';
void main() {
  runApp(View());



}

class View extends StatefulWidget{
  final String name,pass,suname,umail,umobilenum;
    const View({Key key,this.name,this.suname,this.umail,this.umobilenum,this.pass }): super(key:key);

  _ViewState createState()=>_ViewState();

}
class _ViewState extends State<View> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("user detail "),

        ),

             body:Container(
                 padding: EdgeInsets.all(80),
                 width: MediaQuery.of(context).size.width,
               child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,

                 children: [

                   Text("Name: ${widget.name}"
                     ,style: TextStyle(color: Colors.black,fontSize: 25),),
                   Text("Surname: ${widget.suname}"
                     ,style: TextStyle(color: Colors.black,fontSize: 25),),
                   Text("Email: ${widget.umail}"
                     ,style: TextStyle(color: Colors.black,fontSize: 25),),
                   Text("Mobile: ${widget.umobilenum}"
                     ,style: TextStyle(color: Colors.black,fontSize: 25),),
                   Text("pass :${widget.pass}"
                     ,style: TextStyle(color: Colors.black,fontSize: 25),),

                   ButtonTheme(
                     height:50,
                     disabledColor:Colors.blue,
                     child:RaisedButton(

                       child:Text("done",
                           style:TextStyle(fontSize:25,color:Colors.green)

                       ),

                       onPressed: //save,
                           (){

                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context)=>ProfilePage())

                        );



                       /*  Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ProfilePage();})
                             );
                             setState(() {
                               Navigator.pushNamed(context,"/ProfilePage");
                             }); */

                           }

                             //Navigator.pop(context,"/View");

                             //Navigator.pushNamed(context, '/ProfilePage')
                            // return MaterialPageRoute(builder: (_) => ProfilePage());

                     //  },
                     ),
                   ),

                 ],
               )
             )

    );
  }

  }


