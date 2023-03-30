import 'package:flutter/material.dart';
import 'package:json_parsing_project/screen/json3/provider/album_provider.dart';
import 'package:provider/provider.dart';

class albums_screen extends StatefulWidget {
  const albums_screen({Key? key}) : super(key: key);

  @override
  State<albums_screen> createState() => _albums_screenState();
}
Albums_provider?albums_providert,albums_providerf;
class _albums_screenState extends State<albums_screen> {
  @override
  Widget build(BuildContext context) {
    albums_providert= Provider.of<Albums_provider>(context,listen: true);
    albums_providerf= Provider.of<Albums_provider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Albums Json"),
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
                    albums_providerf!.JsonParsing();
                  },
                  child: Text("Albums Data"),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: albums_providert!.postList.length,
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
                        leading: Text("${albums_providert!.postList[index].userId}"),
                        title: Text("${albums_providert!.postList[index].id}"),
                        subtitle: Text("${albums_providert!.postList[index].title}"),
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

