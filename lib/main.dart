import 'package:flutter/material.dart';
import 'package:news_app/home_screen.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {HomeScreen.roueName :(_)=>HomeScreen()},
      initialRoute: HomeScreen.roueName,
      debugShowCheckedModeBanner: true,

    );
  }
}

