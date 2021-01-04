import 'package:equatable/equatable.dart';
import 'package:homepage/user.dart';
import 'package:meta/meta.dart';

abstract class ArticleState extends Equatable {}

class ArticleInitialState extends ArticleState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ArticleLoadingState extends ArticleState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ArticleLoadedState extends ArticleState {

  List<User> details;

  ArticleLoadedState({@required this.details});

  @override
  // TODO: implement props
  List<Object> get props => [details];
}

class ArticleErrorState extends ArticleState {

  //String message;

  //ArticleErrorState({@required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [];
}