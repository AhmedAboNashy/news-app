import 'package:http/http.dart' as http;
class ApiManager{
  static getNewsSources(){
    //v2/top-headlines/sources?apiKey=5f20b18586bf40e18217fbf878aedd36&category=sports
    var uri=Uri.https('newsapi.org', '/v2/top-headlines/sources',);
http.get();
  }
}