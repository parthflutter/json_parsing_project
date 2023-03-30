import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing_project/screen/json5/model/todos_model.dart';

class Todos_provider extends ChangeNotifier{
  List<dynamic>postList=[];

  Future<void>JsonParsing()async {
    String jsonData = await rootBundle.loadString("assets/json/todos.json");
    var json=jsonDecode(jsonData);

    List<dynamic>photoModelList= json.map((e)=>todosModel().fromJson(e)).toList();
    postList= photoModelList;
    notifyListeners();

  }
}