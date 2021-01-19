import 'dart:convert';

import'package:flutter/material.dart';
import 'package:homepage/main_drawer.dart';
import 'package:homepage/usermodel.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
class SettingsPage extends StatefulWidget{
  _SettingsPageState createState()=>_SettingsPageState();

}
const baseUrl = "https://reqres.in/api/users?page=1";
class API {
  static Future getData(page) {
    var url = baseUrl + "users?page=1";
    return http.get(url);
  }
}

class _SettingsPageState extends State<SettingsPage> {
  var users = new List<Data>();

  bool _loadingMore;
  bool _hasMoreItems;
  int _maxItems = 6;
  int _numItemsPage = 5;
  int _nextPage = 2;
  Future _initialLoad;

  @override
  void initState() {
    super.initState();
    _getUsers();
    _hasMoreItems = true;
  }

  Future _loadMoreItems() async {
    Future.delayed(Duration(milliseconds: 10), () {
      setState(() {
        _loadingMore = true;
      });
    });
    int _totalPages;
    API.getData(_nextPage).then((response) {
      var usersList = json.decode(response.body);
      _totalPages = usersList['total_pages'];
      setState(() {
        Iterable list = usersList['data'];
        var usersListNew = list.map((model) => Data.fromJson(model)).toList();
        users.addAll(usersListNew);
        _nextPage = _nextPage + 1;
      });
    });
    print("_totalPages");
    print(_totalPages);
    setState(() {
      _hasMoreItems = false;
      _loadingMore = false;
    });
  }

  _getUsers() async{
    API.getData(1).then((response) {
      setState(() {
        var usersList = json.decode(response.body);
        Iterable list = usersList['data'];
        users = list.map((model) => Data.fromJson(model)).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("Users"),


      ),
      drawer: MainDrawer(),
      body:
      ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final item = users[index];

            if ((_hasMoreItems ?? false) &&
                index == users.length - 1) {
              if (!(_loadingMore ?? false)) {
                // load more items
                _loadMoreItems();
              }
            }

            return (
                Container(
                    child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.all(30),
                              child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: new BorderRadius.circular(
                                          25),
                                      child: Image.network(
                                        users[index].avatar,
                                        height: 50.0,
                                        width: 50.0,
                                      ),
                                    ),
                                    Column(
                                        children: [
                                          Text(users[index].firstName ,style: TextStyle(fontSize: 20,color: Colors.black,),),
                                          Text(users[index].email,style: TextStyle(fontSize: 20,color: Colors.black,),),
                                        ]
                                    )
                                  ]
                              )
                          ),
                          Row(
                              children: [
                                Expanded(
                                  child: new Container(
                                      child: Divider(
                                        color: Colors.grey,
                                        height: 0,
                                      )
                                  ),
                                ),
                              ]
                          ),
                        ]
                    )
                )
            );
          }
      ),
    );
  }
}