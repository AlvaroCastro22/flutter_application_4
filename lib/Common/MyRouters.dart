import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Pages/LoginPage.dart';

//const String ROUTE_HOME = "/home";
const String ROUTE_LOGIN = "/login";
const String ROUTE_PLAY_LIST = "/playlist";
const String ROUTE_NOW_PLAYING = "/now_playing";

class myRouters {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      /*
      case "/home":
        return PageTransition(
          child: const MyHomePage(),
          type: PageTransitionType.fade,
          settings: settings,
          //alignment: Alignment.topLeft
        );*/
      case "/login":
        return CupertinoPageRoute(builder: (_) => LoginPage());
      default:
        return MaterialPageRoute(builder: (_) => LoginPage());
    }
  }
}
