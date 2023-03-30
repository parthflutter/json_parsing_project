import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../model/comments_model.dart';

class Comments_provider extends ChangeNotifier{
  List<dynamic>postList=[];

  Future<void>JsonParsing()async {
  String jsonData = await rootBundle.loadString("assets/json/comments.json");
  var json=jsonDecode(jsonData);

  List<dynamic>commentsModelList= json.map((e)=>commentsModel().fromJson(e)).toList();
  postList= commentsModelList;
  notifyListeners();

  }
  }
