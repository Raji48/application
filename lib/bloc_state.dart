import 'package:equatable/equatable.dart';
import 'package:homepage/homepage.dart';
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

   User details;

  ArticleLoadedState({@required this.details});

  @override
  // TODO: implement props
  List<Object> get props =>[];
}

class ArticleErrorState extends ArticleState {

  @override
  // TODO: implement props
  List<Object> get props => [];
}
/*import 'package:homepage/bloc_event.dart';
import 'package:homepage/homepage.dart';
import 'package:homepage/user.dart';

 //User details=User.fromJson(dummyjson);
class AddAction{
  final String details;

  AddAction(this.details){}
}*/