import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/model/SourcesResponse.dart';

class ApiManager {
  static const String Base_url = 'newsapi.org';
  static const String Api_key = '5f20b18586bf40e18217fbf878aedd36';
  static Future <SourcesResponse>getNewsSources() async {
    //?apiKey=5f20b18586bf40e18217fbf878aedd36&category=sports

    var uri = Uri.https(Base_url, '/v2/top-headlines/sources',
        {'apiKey': Api_key, 'category': 'sports'});
    var response = await http.get(uri);
    // body  hn receve mno El data
    var responseBody=response.body;
    var json= jsonDecode(responseBody);
    var sourcesResponse =SourcesResponse.fromJson(json);
    return sourcesResponse;
  }
}
