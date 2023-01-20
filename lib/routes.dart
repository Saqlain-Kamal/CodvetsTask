import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/home.dart';
import 'package:newapp/login.dart';
import 'package:newapp/splash.dart';
import 'package:newapp/user/user.dart';

class AppRouter {
  static const splash = '/';
  static const home = '/home';
  static const user = '/user';
  static const login = '/login';

  static Route<dynamic>? ongenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case splash:
        return MaterialPageRoute(builder: ((context) => const Splash()));
      case home:
        return MaterialPageRoute(builder: ((context) => Home()));

      case user:
        return MaterialPageRoute(builder: ((context) => User()));

      case login:
        return MaterialPageRoute(builder: ((context) => Login()));
    }

    return null;
  }
}
