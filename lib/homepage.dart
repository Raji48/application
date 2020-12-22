


import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import'package:flutter/material.dart';
import 'package:homepage/main_drawer.dart';
import 'package:homepage/user.dart';
import 'dart:convert';
import 'package:flutter/src/widgets/sliver.dart';
import 'package:flutter/cupertino.dart';





var dummyjson={
  "Value":
 [
  {
    "name": "Geyana",
    "image": "https://personal.psu.edu/xqz5228/jpg.jpg",
    "viewimage": "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg"
  },

 {
    "name": "Sriji",
    "image": "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg",
    "viewimage": "https://personal.psu.edu/xqz5228/jpg.jpg"
  },
{
    "name": "Preethi",
    "image": "https://www.kindpng.com/picc/m/148-1487262_anime-pic-for-boys-fb-profile-hd-png.png",
    "viewimage": "https://cutewallpaper.org/21/wallpapers-for-profile-picture/Profile-Wallpapers-66+-images-.jpg"
  },
  {
    "name": "Saro",
    "image": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg",
    "viewimage": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg"
  },
  {
    "name": "Karthi",
    "image": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg",
    "viewimage": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg"
  },
  {
    "name": "Baji",
    "image": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg",
    "viewimage": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg"
  },
  {
    "name": "Safa",
    "image": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg",
    "viewimage": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg"
  },
  {
    "name": "Aila",
    "image": "https://cutewallpaper.org/21/wallpapers-for-profile-picture/Profile-Wallpapers-66+-images-.jpg",
    "viewimage": "https://www.kindpng.com/picc/m/148-1487262_anime-pic-for-boys-fb-profile-hd-png.png"
  },
  {
    "name": "Mugilan",
    "image": "https://avante.biz/wp-content/uploads/Profile-Pics-Wallpapers/Profile-Pics-Wallpapers-028.jpg",
    "viewimage": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg"
  },
   {
     "name": "Geyana",
     "image": "https://personal.psu.edu/xqz5228/jpg.jpg",
     "viewimage": "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg"
   },

   {
     "name": "Sriji",
     "image": "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg",
     "viewimage": "https://personal.psu.edu/xqz5228/jpg.jpg"
   },
   {
     "name": "Preethi",
     "image": "https://www.kindpng.com/picc/m/148-1487262_anime-pic-for-boys-fb-profile-hd-png.png",
     "viewimage": "https://cutewallpaper.org/21/wallpapers-for-profile-picture/Profile-Wallpapers-66+-images-.jpg"
   },
   {
     "name": "Saro",
     "image": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg",
     "viewimage": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg"
   },
   {
     "name": "Karthi",
     "image": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg",
     "viewimage": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg"
   },
   {
     "name": "Baji",
     "image": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg",
     "viewimage": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg"
   },
   {
     "name": "Safa",
     "image": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg",
     "viewimage": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg"
   },
   {
     "name": "Aila",
     "image": "https://cutewallpaper.org/21/wallpapers-for-profile-picture/Profile-Wallpapers-66+-images-.jpg",
     "viewimage": "https://www.kindpng.com/picc/m/148-1487262_anime-pic-for-boys-fb-profile-hd-png.png"
   },
   {
     "name": "Mugilan",
     "image": "https://avante.biz/wp-content/uploads/Profile-Pics-Wallpapers/Profile-Pics-Wallpapers-028.jpg",
     "viewimage": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg"
   },
   {
     "name": "Geyana",
     "image": "https://personal.psu.edu/xqz5228/jpg.jpg",
     "viewimage": "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg"
   },

   {
     "name": "Sriji",
     "image": "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg",
     "viewimage": "https://personal.psu.edu/xqz5228/jpg.jpg"
   },
   {
     "name": "Preethi",
     "image": "https://www.kindpng.com/picc/m/148-1487262_anime-pic-for-boys-fb-profile-hd-png.png",
     "viewimage": "https://cutewallpaper.org/21/wallpapers-for-profile-picture/Profile-Wallpapers-66+-images-.jpg"
   },
   {
     "name": "Saro",
     "image": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg",
     "viewimage": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg"
   },
   {
     "name": "Karthi",
     "image": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg",
     "viewimage": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg"
   },
   {
     "name": "Baji",
     "image": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg",
     "viewimage": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg"
   },
   {
     "name": "Safa",
     "image": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg",
     "viewimage": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg"
   },
   {
     "name": "Aila",
     "image": "https://cutewallpaper.org/21/wallpapers-for-profile-picture/Profile-Wallpapers-66+-images-.jpg",
     "viewimage": "https://www.kindpng.com/picc/m/148-1487262_anime-pic-for-boys-fb-profile-hd-png.png"
   },
   {
     "name": "Mugilan",
     "image": "https://avante.biz/wp-content/uploads/Profile-Pics-Wallpapers/Profile-Pics-Wallpapers-028.jpg",
     "viewimage": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg"
   },
   {
     "name": "Geyana",
     "image": "https://personal.psu.edu/xqz5228/jpg.jpg",
     "viewimage": "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg"
   },

   {
     "name": "Sriji",
     "image": "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg",
     "viewimage": "https://personal.psu.edu/xqz5228/jpg.jpg"
   },
   {
     "name": "Preethi",
     "image": "https://www.kindpng.com/picc/m/148-1487262_anime-pic-for-boys-fb-profile-hd-png.png",
     "viewimage": "https://cutewallpaper.org/21/wallpapers-for-profile-picture/Profile-Wallpapers-66+-images-.jpg"
   },
   {
     "name": "Saro",
     "image": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg",
     "viewimage": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg"
   },
   {
     "name": "Karthi",
     "image": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg",
     "viewimage": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg"
   },
   {
     "name": "Baji",
     "image": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg",
     "viewimage": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg"
   },
   {
     "name": "Safa",
     "image": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg",
     "viewimage": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg"
   },
   {
     "name": "Aila",
     "image": "https://cutewallpaper.org/21/wallpapers-for-profile-picture/Profile-Wallpapers-66+-images-.jpg",
     "viewimage": "https://www.kindpng.com/picc/m/148-1487262_anime-pic-for-boys-fb-profile-hd-png.png"
   },
   {
     "name": "Mugilan",
     "image": "https://avante.biz/wp-content/uploads/Profile-Pics-Wallpapers/Profile-Pics-Wallpapers-028.jpg",
     "viewimage": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg"
   },
   {
     "name": "Geyana",
     "image": "https://personal.psu.edu/xqz5228/jpg.jpg",
     "viewimage": "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg"
   },

   {
     "name": "Sriji",
     "image": "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg",
     "viewimage": "https://personal.psu.edu/xqz5228/jpg.jpg"
   },
   {
     "name": "Preethi",
     "image": "https://www.kindpng.com/picc/m/148-1487262_anime-pic-for-boys-fb-profile-hd-png.png",
     "viewimage": "https://cutewallpaper.org/21/wallpapers-for-profile-picture/Profile-Wallpapers-66+-images-.jpg"
   },
   {
     "name": "Saro",
     "image": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg",
     "viewimage": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg"
   },
   {
     "name": "Karthi",
     "image": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg",
     "viewimage": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg"
   },
   {
     "name": "Baji",
     "image": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg",
     "viewimage": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg"
   },
   {
     "name": "Safa",
     "image": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg",
     "viewimage": "https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg"
   },
   {
     "name": "Aila",
     "image": "https://cutewallpaper.org/21/wallpapers-for-profile-picture/Profile-Wallpapers-66+-images-.jpg",
     "viewimage": "https://www.kindpng.com/picc/m/148-1487262_anime-pic-for-boys-fb-profile-hd-png.png"
   },
   {
     "name": "Mugilan",
     "image": "https://avante.biz/wp-content/uploads/Profile-Pics-Wallpapers/Profile-Pics-Wallpapers-028.jpg",
     "viewimage": "https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg"
   }
  ]
 };


class HomePage extends StatefulWidget{

  @override
  _HomePageState createState()=>_HomePageState();

}

class _HomePageState extends State<HomePage> {
  User detail=User.fromJson(dummyjson);
  //List Value;
  ScrollController _scrollController=ScrollController();
  int _currentmax = 10;
@override
void initState(){
  super.initState();
   //Value=List.generate(10, (index) => null);
  detail.value=List.generate(10,(index)=>detail.value[index]);

  _scrollController.addListener(() {
    if(_scrollController.position.pixels==_scrollController.position.maxScrollExtent){
      _getmoredata();
    }
  });
}
 _getmoredata(){
      for(int i = _currentmax;i<_currentmax+10;i++){
       // mylist.add("Item : ${i+1}");
       //detail.value.add(detail.value[]);
        detail.value=List.generate(10,(index)=>detail.value[index]);
      }
      _currentmax =_currentmax+10;
      setState(() {

      });
}

  Widget build(BuildContext context) {


  //  User detail=User.fromJson(dummyjson);


      return new Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title:  Text("Feed",
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
          ),


        ),
        drawer: MainDrawer(),
        body:

     // return
        ListView.builder(
             // itemExtent: 80,
          controller: _scrollController,
        itemBuilder: (context, index) {
              // var userdata = userList[index];
            if(index==detail.value.length){
              return CupertinoActivityIndicator();
            }

             return new Padding(
                padding: new EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: new Card(
                  //elevation: 5,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(16.0),
                  ),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      new Padding(

                        padding: new EdgeInsets.all(16.0),
                        child: new Row(
                         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 35.0,
                                  height: 35.0,
                                  child: CircleAvatar(
                                //   child: new Image.network(
                                    backgroundImage: NetworkImage(

                                        detail.value[index].image
                                        //List.generate(10,(index)=> detail.value[index].image);
                                    ),
                                  ),

                                ),
                                SizedBox(width: 10.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(//List[dummyjson].name
                                        detail.value[index].name

                                        , style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),

                      new ClipRRect(
                        child: new Image.network(
                            detail.value[index].viewimage
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: new Radius.circular(16.0),
                          topRight: new Radius.circular(16.0),
                        ),
                      ),

                    ],

                  ),
                ),

              );
            },
            //physics: ScrollPhysics(),
             itemCount: detail.value.length +1,

          ),


      );
    }
  }
