import 'package:flutter/services.dart';
import 'package:sr_bible/src/data/models/bible.dart';
import 'dart:convert';

class BibleRepo {
  Future<List<Bible>> getBible() async {
    String jsonString = await rootBundle.loadString('assets/json/bible.json');
    List<dynamic> jsonData = jsonDecode(jsonString);
    List<Bible> bibleList = [];
    for (var element in jsonData) {
      bibleList.add(Bible.fromJson(element));
    }
    return bibleList;
  }
}
