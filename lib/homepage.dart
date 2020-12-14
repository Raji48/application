import'package:flutter/material.dart';
import 'package:homepage/main_drawer.dart';
class HomePage extends StatefulWidget{
  _HomePageState createState()=>_HomePageState();

}

class _HomePageState extends State<HomePage> {
  List names =["Geyana","Aishu","Junaid","Preethi","Saro","Karthi","Baji","Safa","Aila","Mugilan"];
   List image=[
    'https://cutewallpaper.org/21/wallpapers-for-profile-picture/Profile-Wallpapers-66+-images-.jpg',
     'https://wallpapercave.com/wp/wp3274368.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-4V9TSinwHExsJlvd_x0BTKwY8VxWtpLQ3A&usqp=CAU',
     'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.goodmorningimagess.online%2F2020%2F03%2Fsweet-dp-for-whatsapp-profile.html&psig=AOvVaw3m1XNXggqDcffmqcHONBcw&ust=1608038073320000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKD_w9TGze0CFQAAAAAdAAAAABAe',
     'https://www.wallsnapy.com/img_gallery/stylish-love-profile-pictures-hd-1191978.jpg',
     'https://www.unigreet.com/wp-content/uploads/2020/04/Sweet-girl-dp.jpg',
     'https://www.decentfashion.in/wp-content/uploads/2018/09/romanticey-whatsapp-dp-imag-300x204.gif',
     'https://avante.biz/wp-content/uploads/Profile-Pics-Wallpapers/Profile-Pics-Wallpapers-028.jpg',
     'https://3.bp.blogspot.com/-ktQ-8FfBn3w/UfoVgK4QUVI/AAAAAAAAAIk/f85h2mNzFAQ/s1600/I-Love-You-2013-Photography-HD-Wallpaper-1080x675.jpg',
     'https://www.kindpng.com/picc/m/148-1487262_anime-pic-for-boys-fb-profile-hd-png.png',
   ];
   List viewimage =[
     'https://www.wallpapertip.com/wmimgs/76-761129_world-famous-places-4k-wallpapers-sky-hd-wallpaper.jpg',
  'https://images.unsplash.com/photo-1497316730643-415fac54a2af?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80',
     'https://avante.biz/wp-content/uploads/Profile-Pics-Wallpapers/Profile-Pics-Wallpapers-028.jpg',
     'https://3.bp.blogspot.com/-ktQ-8FfBn3w/UfoVgK4QUVI/AAAAAAAAAIk/f85h2mNzFAQ/s1600/I-Love-You-2013-Photography-HD-Wallpaper-1080x675.jpg',
     'https://www.kindpng.com/picc/m/148-1487262_anime-pic-for-boys-fb-profile-hd-png.png',
     'https://cutewallpaper.org/21/wallpapers-for-profile-picture/Profile-Wallpapers-66+-images-.jpg',
     'https://4.bp.blogspot.com/-4XMzZZUrRqs/WncjSiC7ePI/AAAAAAAAA3w/JZYCWhNbsFY_CRR0aQ1FzCxwHLjeKFHhgCLcBGAs/s1600/19.jpg',
     'https://www.hdwallpapersfreedownload.com/uploads/large/birds/butterflies-hd-photos.jpg',
     'https://www.trickscity.com/wp-content/uploads/2017/05/cool-facebook-profile-pictures-for-boy-hd.jpg',
    'https://www.whatsapp-dp-images.in/wp-content/uploads/2019/10/best-whatsapp-dp-images-hd-download-8.jpg',
   ];

  void _incrementCounter(){
    setState(() {
    //  _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title:  Text("Field",
        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
       ),


      ),
      drawer: MainDrawer(),
      body:

        new ListView.builder(itemBuilder: (context,index){

          return new Padding(padding: new EdgeInsets.symmetric(vertical: 8.0,horizontal:16.0 ),
         child:new Card(
           elevation: 5,
               shape:new RoundedRectangleBorder(
                 borderRadius: new BorderRadius.circular(16.0),
               ),
           child: new Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
             //  width.MediaQuery.of(context).size.width,
               new Padding(

                 padding: new EdgeInsets.all(16.0),
                 child: new  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    // new Text('x'),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Container(
                           width:35.0,
                           height:35.0,
                           child:CircleAvatar(
                             backgroundImage: NetworkImage(
                               image[index]
                             ),
                           ),
                         ),
                         SizedBox(width:10.0),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(names[index],style: TextStyle(fontSize: 18,color:Colors.black,fontWeight: FontWeight.bold)),
                           ],
                         )
                       ],
                     ),
                   ],
                 ),
               ),
               //new Text('a'),
               new ClipRRect(
              child:new Image.network(
                viewimage[index]
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
          itemCount: 10,
         // shrinkWrap: true,
          //physics: ScrollPhysics(),
        ),
          floatingActionButton:FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),

        ),



    );
  }
}