

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing_project/screen/json3/model/album_model.dart';

class Albums_provider extends ChangeNotifier{
  List<dynamic>postList=[];

  Future<void>JsonParsing()async {
    String jsonData = await rootBundle.loadString("assets/json/album.json");
    var json=jsonDecode(jsonData);

    List<dynamic>postModelList= json.map((e)=>albumModel().fromJson(e)).toList();
    postList= postModelList;
    notifyListeners();

  }
}