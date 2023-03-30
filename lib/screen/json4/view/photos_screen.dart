import 'package:flutter/material.dart';
import 'package:json_parsing_project/screen/json4/provider/photo_provider.dart';
import 'package:provider/provider.dart';

class photo_screen extends StatefulWidget {
  const photo_screen({Key? key}) : super(key: key);

  @override
  State<photo_screen> createState() => _photo_screenState();
}
Photos_Provider?photos_providert,photos_providerf;
class _photo_screenState extends State<photo_screen> {
  @override
  Widget build(BuildContext context) {
    photos_providerf= Provider.of<Photos_Provider>(context,listen:false);
    photos_providert= Provider.of<Photos_Provider>(context,listen:true);
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Photo Json"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    photos_providerf!.JsonParsing();
                  },
                  child: Text("Photos Data"),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: photos_providert!.postList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: ListTile(
                        leading: Text("${photos_providert!.postList[index].id}"),
                        title: Text("${photos_providert!.postList[index].albumId}"),
                        subtitle: Text("${photos_providert!.postList[index].title}"),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

