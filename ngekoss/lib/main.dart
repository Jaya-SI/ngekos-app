import 'package:flutter/material.dart';
import 'package:ngekoss/pages/login_page.dart';
import 'package:ngekoss/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
