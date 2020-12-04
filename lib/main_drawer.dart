import 'package:flutter/material.dart';
import 'package:homepage/login_page.dart';


class MainDrawer extends StatelessWidget{
  Widget build(BuildContext context){
    return Drawer(

           child:Column(
        children:<Widget>[
         // SizedBox(height:80,),
          Container(
            width:double.infinity,
            padding:EdgeInsets.all(20),
            color:Theme.of(context).primaryColor,
            child:Center(
                child:Column(
                    children:<Widget>[
                      Container(
                        width:100,
                            height:100,
                       margin:EdgeInsets.only(
                         top:30,
                             bottom:10
                       ),
                   decoration:BoxDecoration(

                   shape:BoxShape.circle,
                   image: DecorationImage(
                       image:NetworkImage(
                           'https://icon-library.com/images/user-icon-jpg/user-icon-jpg-4.jpg')
                    //fit:BoxFit.fill
                    )),
                         // Text("user name",Style:TextStyle(fontSize: 25,color:Colors.green),)

                      ),
                      Text(
                      'Raji',style:TextStyle(fontSize: 25,color:Colors.white),)


                ],
                ),

            ),
          ),
          ListTile(
            leading:Icon(Icons.home),
            title:Text('About',style:TextStyle(fontSize: 18),),
              onTap: null,


          ),
          ListTile(
            leading:Icon(Icons.arrow_back),
            title:Text('Log out',style:TextStyle(fontSize: 18),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(),),
               );

              },


          ),

        ],
      ),
      );

  }
}