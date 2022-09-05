import 'package:flutter/material.dart';
import 'package:news_app/home/home_screen.dart';

import 'home/news/news_fragment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      routes: {HomeScreen.routeName: (_) => NewsFragment(),},color: Colors.green,
      initialRoute: HomeScreen.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
