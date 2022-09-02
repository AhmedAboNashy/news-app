import 'package:flutter/material.dart';
import 'package:news_app/api/api_manager.dart';
import 'package:news_app/home/news_widget.dart';
import 'package:news_app/model/NewsResponse.dart';
import 'package:news_app/model/SourcesResponse.dart';

class NewsList extends StatelessWidget {
  Source source;
  NewsList(this.source);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          FutureBuilder<NewsResponse>(
            future: ApiManager.getNewsBySourceId(source.id ?? ''),
           builder: (_, snapShot) {
              if (snapShot.hasError) {
                return Center(child: Text('${snapShot.error.toString()}'));
              } else if (snapShot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              var data = snapShot.data;
              if ('error' == data?.status) {
                return Center(child: Text('${data?.message}'));
              }
              return Expanded(
                child: ListView.builder(
                  itemBuilder: (_, index) {
                    return NewsWidget((data?.newsList![index])!);
                  },
                  itemCount: data?.newsList?.length ?? 0,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
