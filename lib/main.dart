import 'package:flutter/material.dart';
import 'package:newapp/home.dart';
import 'package:newapp/routes.dart';

void main() {
  runApp(const SocialApp());
}

class SocialApp extends StatelessWidget {
  const SocialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        return AppRouter.ongenerateRoute(settings);
      },
    );
  }
}
