import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/photos_model.dart';

class Photos_Provider extends ChangeNotifier{
  List<dynamic>postList=[];

  Future<void>JsonParsing()async {
    String jsonData = await rootBundle.loadString("assets/json/photo.json");
    var json=jsonDecode(jsonData);

    List<dynamic>photoModelList= json.map((e)=>photoModel().fromJson(e)).toList();
    postList= photoModelList;
    notifyListeners();

  }
}