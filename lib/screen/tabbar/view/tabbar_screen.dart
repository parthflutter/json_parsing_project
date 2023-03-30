import 'package:flutter/material.dart';

import '../../json2/view/coments_screen.dart';
import '../../json3/view/album_screen.dart';
import '../../json4/view/photos_screen.dart';
import '../../json5/view/todos_screen.dart';
import '../../json_project/view/post_screen.dart';

class Tabbar_Screen extends StatefulWidget {
  const Tabbar_Screen({Key? key}) : super(key: key);

  @override
  State<Tabbar_Screen> createState() => _Tabbar_ScreenState();
}
class _Tabbar_ScreenState extends State<Tabbar_Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
        child: Scaffold(
        appBar: AppBar(
          title: Text("Json Data"),
          centerTitle: true,
          backgroundColor: Colors.black,
          bottom:  TabBar(
              tabs: [
            Tab(
              text: 'post',
            ),
                Tab(
                  text: 'comments',
                ),
                Tab(
                  text: 'album',
                ),
                Tab(
                  text: 'photo',
                ),
                Tab(
                  text: 'todos',
                ),
          ])
        ),
          body: TabBarView(
            children: [
              post_screen(),
              Comments_screen(),
              albums_screen(),
              photo_screen(),
              Todos_screen(),
          ],
          ),
      ),
    ),
    );
  }
}
