import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homepage/bloc_event.dart';
import 'package:homepage/bloc_state.dart';
import 'package:homepage/homepage.dart';
import 'package:homepage/user.dart';
import 'dart:convert';

import 'bloc.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {

  var details;

  //ArticleRepository repository;
//  User details  =User.fromJson(dummyjson);
  ArticleBloc({@required this.details}) : super(null);


  @override
  // TODO: implement initialState
  ArticleState get initialState => ArticleInitialState();

  @override
  Stream<ArticleState> mapEventToState(ArticleEvent event) async* {
    if (event is FetchArticlesEvent) {
      yield ArticleLoadingState();
      try {
        //     User details  =User.fromJson(dummyjson);
        // List<User> details = await details.getArticles();
        //  yield ArticleLoadedState(details: details);
        details = //details.map<User>((json) =>
        User.fromJson(dummyjson);
        yield ArticleLoadedState(details: details);
      } catch (e) {
        yield ArticleErrorState();
      }
    }
  }
}