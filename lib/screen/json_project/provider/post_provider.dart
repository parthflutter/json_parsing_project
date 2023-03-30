import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/post_model.dart';

class Post_provider extends ChangeNotifier{
List<dynamic>postList=[];

Future<void>JsonParsing()async {
  String jsonData = await rootBundle.loadString("assets/json/post.json");
  var json=jsonDecode(jsonData);

  List<dynamic>postModelList= json.map((e)=>PostModel().fromJson(e)).toList();
  postList= postModelList;
  notifyListeners();

}
}