


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
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';




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

void main() => runApp(MyPage());
class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = Store<AppState>(
      appStateReducer,
      initialState: AppState.initialState(),);

    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget{

  @override
  _HomePageState createState()=>_HomePageState();

}

class _HomePageState extends State<HomePage> {





  int x = 10;
  bool y=true;
 // ScrollController _scrollController = ScrollController();
  //List<String> name,image,viewimage = new List();

  //ArticleBloc articleBloc;
  /*@override void initState() {
  super.initState();
    // articleBloc =ArticleBloc(ArticleInitialState());
     // articleBloc.add(FetchArticlesEvent());
       details.value = List.generate(10, (index) => details.value[index],);

       _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent)
        {
        if (x <= details.value.length) {
          _getmoredata();
        }
       x++;

     }
    });
  }

   _getmoredata() {
      for (int i = 0; i < 10; i++) {
         setState(() {
          details.value.add(details.value[i]);
             });

      }
    }*/


  @override

  Widget build(BuildContext context) {

   return  Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("Feed",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),


      ),
      drawer: MainDrawer(),
      body:SingleChildScrollView(
        child:StoreConnector<AppState,_ViewModel>(
            converter:(Store<AppState> store)=> _ViewModel.create(store),
           builder:(BuildContext context,_ViewModel _viewModel)=>Column(
            children: [
             AddItemWidget(_viewModel)

         ],
     ),
   ),

      ),/*  y==true ? Container(
        child: Center(
                 child: Text("Loading"),
        ),
      );*/

       //return
    /*  BlocBuilder<ArticleBloc, ArticleState>(
       cubit: articleBloc,

       builder: (context, state) {
         if (state is ArticleInitialState) {
           return buildLoading();
         }
         else if (state is ArticleLoadingState) {
           return buildLoading();
         }
         if (state is ArticleLoadedState) {
           return buildList(state.details);
           // return buildLoading();

         } else if (state is ArticleErrorState) {
           //return buildErrorUi(state.message);
           return buildLoading();
         }
         return null;
       },

     )*/

    );
  }
 /*  Widget buildList(User details) {

   return ListView.builder(

     //controller: _scrollController,
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
  } */
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

class AddItemWidget extends StatelessWidget {
 final _ViewModel model;

  AddItemWidget(this.model);
 ScrollController _scrollController = new ScrollController();
  @override
  Widget build(BuildContext context) {
   // User details= User.fromJson(dummyjson);
    return ListView.builder(
      controller: _scrollController,
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
       shrinkWrap: true,
      //controller: _scrollController,
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
}
  class _ViewModel {
   final List<User> details;
  //  final Function(String) onAddItem;
  //  User details;
    _ViewModel({this.details});

    factory _ViewModel.create(Store<AppState> store) {
      return _ViewModel(
          details: store.state.details);
    }
  }
