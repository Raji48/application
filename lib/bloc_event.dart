/*import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:homepage/homepage.dart';
import 'package:homepage/user.dart';
import 'package:meta/meta.dart';

abstract class ArticleEvent extends Equatable{}

class FetchArticlesEvent extends ArticleEvent {

  @override
  // TODO: implement props

  List<Object> get props => null;


}*/

import 'package:flutter/cupertino.dart';
import 'package:homepage/homepage.dart';
import 'package:homepage/user.dart';

import 'package:flutter/foundation.dart';
 User details=User.fromJson(dummyjson);

class AppState{
  //User details;
  final List<User>details;

  AppState({
    @required this.details,
});
  AppState.initialState(): details = List.unmodifiable(<User>[]);

}