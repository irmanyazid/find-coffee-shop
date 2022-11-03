import 'package:coffee_shop/pages/home_page.dart';
import 'package:coffee_shop/pages/sign_up_page.dart';
import 'package:coffee_shop/pages/started_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/started-page': (context) => StartedPage(),
        '/home-page': (context) => HomePage(),
        '/sign-up': (context) => SignUpPage(),
      },
      home: StartedPage(),
    );
  }
}
