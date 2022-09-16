import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/pattern.png'))),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: AppBar().preferredSize,
          child: SafeArea(
            child: Container(
              color: Colors.white,
              child: AppBar(
                title: Text(
                  ' News App',
                  style: TextStyle(color: Colors.black),
                ),
                centerTitle: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                )),
                backgroundColor: Colors.white,
                leading: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),

            ),
          ),
        ),
      ),
    );
  }
  void onSideMenyIconClick(){}
}
