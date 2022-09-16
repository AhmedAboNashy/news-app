import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/NewsResponse.dart';

import '../../my_date_utils.dart';

class NewsWidget extends StatelessWidget {
  News news;
  NewsWidget(this.news);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(  borderRadius: BorderRadius.circular(18.0),

            child: CachedNetworkImage(
              imageUrl: news.urlToImage ?? '', height: 230,
              width: double.infinity, fit: BoxFit.cover,
              placeholder: (context, url) => Center(
                  child: CircularProgressIndicator()), // da el reload ely by7sl
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Text(news.author ?? '',
              style: TextStyle(color: Color(0XFF79828B), fontSize: 12)),
          Text(news.title ?? '',
              style: TextStyle(
                  color: Color(0XFF42505C),
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
          SizedBox(
            height: 20,
          ),
          // el date & Month & day &year
          Text(MyDateUtyils.formatNewsDate(news.publishedAt?? ""),
              textAlign: TextAlign.end,
              style: TextStyle(color: Color(0XFF79828B), fontSize: 12)),
        ],
      ),
    );
  }
}
