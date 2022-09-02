import 'package:flutter/cupertino.dart';
import 'package:news_app/model/NewsResponse.dart';

class NewsWidget extends StatelessWidget {

News news;
 NewsWidget(this.news);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(news.urlToImage?? '',height: 120,width:double.infinity,fit: BoxFit.cover,),
          Text(news.author?? ''),
          Text(news.title?? ''),
          Text(news.publishedAt?? ''),
        ],
      ),
    );
  }
}
