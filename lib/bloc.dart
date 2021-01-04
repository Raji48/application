/*import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homepage/user.dart';

import 'homepage.dart';


abstract class ArticleRepository {

  Future<List<User>> getArticles();
}

class ArticleRepositoryImpl implements ArticleRepository {

  @override
  Future<List<User>> getArticles() async {

    User v = User.fromJson(dummyjson);

   // var response = await http.get(AppStrings.cricArticleUrl);
  /* if (articles.statusCode == 200) {
      var data = json.decode(response.body);
      List<Articles> articles = ApiResultModel.fromJson(data).articles;
      return articles;
    } else {
      throw Exception();
    }*/
  }

}*/

/*class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    print(event);
    super.onEvent(bloc, event);
  }

  @override
  void onChange(Cubit cubit, Change change) {
    print(change);
    super.onChange(cubit, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(transition);
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(cubit, error, stackTrace);
  }
}

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(HomePage());
}
*/
/// A [StatelessWidget] which uses:
/// * [bloc](https://pub.dev/packages/bloc)
/// * [flutter_bloc](https://pub.dev/packages/flutter_bloc)
/// to manage the state of a counter.
/*class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
      builder: (_, theme) {
          return MaterialApp(
            theme: theme,
            home:
    BlocProvider(
             create: (_) => CounterBloc(),
              child:
    CounterPage(),
            ),
          );
        },
      ),
    );
  }
}*/
