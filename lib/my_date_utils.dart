import 'package:intl/intl.dart';

class MyDateUtyils{
 static String formatNewsDate(String inputDateString){
  //  hn3mel opject DateTeFormate
    // "publishedAt": "2022-09-05T12:56:18Z",
   var inputDateFormatter= DateFormat('yyyy-MM-ddThh:mm:ssZ');
  // I need name year & I need name month &  name day & am & pm ... 3M 4l4an 3awez el month m4 3awez digit(number)
  var outPutDateFormatter=DateFormat('yyyy/MMM/dd hh:mm a');
  var inputDate=inputDateFormatter.parse(inputDateString);
  var outPutDateString= outPutDateFormatter.format(inputDate);
  return outPutDateString;
  }
}