import 'dart:io';

import 'package:flutter/material.dart';
import 'package:news_app/api/api_manager.dart';
import 'package:news_app/home/home_side_meny.dart';
import 'package:news_app/home/news/sources_tabs.dart';
import 'package:news_app/model/SourcesResponse.dart';

class NewsFragment extends StatefulWidget {
  @override
  State<NewsFragment> createState() => _NewsFragmentState();
}

class _NewsFragmentState extends State<NewsFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/pattern.png'))),
      child: Scaffold(
        drawer: Drawer(
          child: HomeSideMeny(onSideMenyIconClick),
        ),
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: AppBar().preferredSize,
          child: SafeArea(
            child: Container(
              color: Colors.white,
              child: AppBar(
                title: Text(
                  ' News App',
                ),
                centerTitle: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                )),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            FutureBuilder<SourcesResponse>(
                future: ApiManager.getNewsSources(),
                builder: (buildContext, snapShot) {
                  if (snapShot.hasError) {
                    return Center(child: Text('${snapShot.error.toString()}'));
                  } else if (snapShot.connectionState ==
                      ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  var data = snapShot.data;
                  if ('error' == data?.status) {
                    return Center(child: Text('${data?.message}'));
                  }
                  var sources = data?.sources;
                  return SourcesTabs(sources!);
                })
          ],
        ),
      ),
    );
  }

  void onSideMenyIconClick(int type) {
    if(type==HomeSideMeny.Cattegories){
  }
    else if(type==HomeSideMeny.Settings){

    }
    Navigator.pop(context);
}
}
