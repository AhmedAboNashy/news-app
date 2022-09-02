import 'package:flutter/material.dart';
import 'package:news_app/api/api_manager.dart';
import 'package:news_app/home/sources_tabs.dart';
import 'package:news_app/model/SourcesResponse.dart';

class HomeScreen extends StatelessWidget {
  static const String roueName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          ' News App ',
        )),
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
    );
  }
}
