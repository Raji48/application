
import 'package:flutter/material.dart';
import 'package:homepage/homepage.dart';
import 'package:homepage/profilepage.dart';
import 'package:homepage/settingspage.dart';



class Nav extends StatefulWidget{
  _NavState createState()=>_NavState();
}
class _NavState extends State<Nav>{
  int _currentIndex =0;
  final List<Widget> _children=[
    MyPage(),
    //HomePage(),
    SettingsPage(),
    ProfilePage(),

  ];
  void onTappedbar(int index)
  {
    setState(() {
      _currentIndex=index;
    });
  }

  Widget build(BuildContext context){
    return new Scaffold(

       body:_children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
       // backgroundColor: Colors.greenAccent,
        onTap: onTappedbar,
        currentIndex: _currentIndex,
        items:[
          BottomNavigationBarItem(icon:Icon(Icons.home),
         // ignore: deprecated_member_use
         title:Text("Home")),
          BottomNavigationBarItem(icon:Icon(Icons.settings),
              // ignore: deprecated_member_use
              title:Text("Settings"),





          ),
          BottomNavigationBarItem(icon:Icon(Icons.person),
              // ignore: deprecated_member_use
              title:Text("Profile")),

        ]



      ),

      

    );
  }
}