import 'package:flutter/material.dart';
import 'package:json_parsing_project/screen/json2/provider/comments_provider.dart';
import 'package:json_parsing_project/screen/json2/view/coments_screen.dart';
import 'package:json_parsing_project/screen/json3/provider/album_provider.dart';
import 'package:json_parsing_project/screen/json3/view/album_screen.dart';
import 'package:json_parsing_project/screen/json4/provider/photo_provider.dart';
import 'package:json_parsing_project/screen/json4/view/photos_screen.dart';
import 'package:json_parsing_project/screen/json5/provider/todos_provider.dart';
import 'package:json_parsing_project/screen/json5/view/todos_screen.dart';
import 'package:json_parsing_project/screen/json_project/provider/post_provider.dart';
import 'package:json_parsing_project/screen/json_project/view/post_screen.dart';
import 'package:json_parsing_project/screen/tabbar/view/tabbar_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(context) => Post_provider()),
        ChangeNotifierProvider(create:(context) => Comments_provider()),
        ChangeNotifierProvider(create:(context) => Albums_provider()),
        ChangeNotifierProvider(create:(context) => Photos_Provider()),
        ChangeNotifierProvider(create:(context) => Todos_provider()),
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
        routes: {
        '/':(context) =>Tabbar_Screen(),
          'post_screen':(context)=> post_screen(),
          'Comments_screen':(context) => Comments_screen(),
          'albums_screen':(context) => albums_screen(),
          'photo_screen':(context) => photo_screen(),
          'Todos_screen':(context) => Todos_screen(),
        },
      ),
    ),

  );
}