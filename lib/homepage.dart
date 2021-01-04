


import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homepage/main_drawer.dart';
import 'package:homepage/user.dart';
import 'dart:convert';
import 'package:flutter/src/widgets/sliver.dart';
import 'package:flutter/cupertino.dart';

import 'bloc_event.dart';
import 'bloc_setbloc.dart';
import 'bloc_state.dart';
//import 'package:flutter_redux/flutter_redux.dart';
//import 'package:redux/redux.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';

/*class ListState{
  final List<String> items;
  ListState({this.items})
}
*/




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
    "name": "Aishu",
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
     "name": "Sriji",
     "image": "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg",
     "viewimage": "https://personal.psu.edu/xqz5228/jpg.jpg"
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

  ArticleBloc Bloc;

  User details = User.fromJson(dummyjson);


  int x = 10;
  bool y=true;
  ScrollController _scrollController = ScrollController();
  //List<String> name,image,viewimage = new List();

  @override void initState() {
  //super.initState();
 //  Bloc = ArticleBloc();
    BlocProvider(
      create: (context) =>
       ArticleBloc(details: details)..add(FetchArticlesEvent()),
         child: buildArticleList(),
          
    );
    //articleBloc = BlocProvider.of<ArticleBloc>(context);
    //  articleBloc.add(FetchArticlesEvent());
    //buildArticleList();

       /* detail.value = List.generate(10, (index) => detail.value[index],);

       _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent)
        {
        if (x <= detail.value.length) {
          _getmoredata();
        }
       x++;

     }
    });
  }

   _getmoredata() {
      for (int i = 0; i < 10; i++) {
         setState(() {
          detail.value.add(detail.value[i]);
             });

      }*/
    }


  @override

  Widget build(BuildContext context) {
    //  User detail=User.fromJson(dummyjson);
   // final Bloc = BlocProvider.of(context);

       // Bloc: Bloc,

   return new Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("Feed",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),


      ),
      drawer: MainDrawer(),
      body:
      //  buildLoading()
      // buildArticleList()
      /*  y==true ? Container(
        child: Center(
                 child: Text("Loading"),
        ),
      );*/

       //return

     Container(
     child: Center(child: buildArticleList())
        /*child: BlocListener<ArticleBloc, ArticleState>(
          listener: (context, state) {
            if (state is ArticleErrorState) {
            /*  Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.null),
                ),
              );*/
              return buildLoading();
            }
          },*/

       /* child: BlocBuilder<ArticleBloc, ArticleState>(
          builder: (context, state) {
            if (state is ArticleInitialState) {
              return buildLoading();
            } else if (state is ArticleLoadingState) {
              return buildLoading();
            } else if (state is ArticleLoadedState) {
             // return buildArticleList(state.details);
              return buildLoading();
            } else if (state is ArticleErrorState) {
              //return buildErrorUi(state.message);
              return buildLoading();
            }
          },
        ),*/
        ),

      //)


      /* ListView.builder(

        controller: _scrollController,
        itemBuilder: (context, index) {
          // var userdata = userList[index];
          /*  if(index==detail.value.length){
              return CupertinoActivityIndicator();

            }*/
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

                                ),
                              ),

                            ),
                            SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
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

        itemCount: detail.value.length,

      ),*/
   // )

    );
  }
 Widget buildArticleList() {
 //  User detail=User.fromJson(dummyjson);
  // ArticleBloc Bloc = BlocProvider.of<ArticleBloc>(context),
    return ListView.builder(

      controller: _scrollController,
      itemBuilder: (context, index) {
        // var userdata = userList[index];
        /*  if(index==detail.value.length){
              return CupertinoActivityIndicator();

            }*/
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

                                  details.value[index].image

                              ),
                            ),

                          ),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  details.value[index].name

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
                      details.value[index].viewimage
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

      itemCount: details.value.length,

    );

  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
  /*Widget buildErrorUi(String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          message,
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }*/

  }

