import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homepage/bloc_event.dart';
import 'package:homepage/bloc_state.dart';
import 'package:homepage/homepage.dart';
import 'package:homepage/user.dart';
import 'dart:convert';

import 'bloc.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {

  User details;




 ArticleBloc({@required this.details}): super(ArticleInitialState());


  @override
  // TODO: implement initialState
  ArticleState get initialState => ArticleInitialState();

  @override
  Stream<ArticleState> mapEventToState(ArticleEvent event) async* {
   if (event is FetchArticlesEvent) {
    yield ArticleLoadingState();
      try {

            details=User.fromJson(dummyjson);
           ArticleLoadedState(details:details);
     } catch (e) {
        yield ArticleErrorState();
     }
    }
  }
}


//  List<User> details = List<User>.from(dummyjson.map((i) => User.fromJson(i)))
//details.value=List.generate(10, (index) => details.value[index]);
//await details.getArticles();
//  yield ArticleLoadedState(details: details);
//   details = //details.map<User>((json) =>
//User.fromJson(dummyjson);

//details  = User.fromJson(dummyjson);
// details = (j/son.decode(User.fromJson(dummyjson).value.List);
//.map((dummyjson) => details.fromJson(dummyjson))
//  .toList();