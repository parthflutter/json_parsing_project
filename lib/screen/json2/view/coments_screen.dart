import 'package:flutter/material.dart';
import 'package:json_parsing_project/screen/json2/provider/comments_provider.dart';
import 'package:provider/provider.dart';

class Comments_screen extends StatefulWidget {
  const Comments_screen({Key? key}) : super(key: key);

  @override
  State<Comments_screen> createState() => _Comments_screenState();
}
Comments_provider?comments_providert,comments_providerf;
class _Comments_screenState extends State<Comments_screen> {
  @override
  Widget build(BuildContext context) {
    comments_providerf= Provider.of<Comments_provider>(context,listen: false);
    comments_providert= Provider.of<Comments_provider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Comments Json"),
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
                    comments_providerf!.JsonParsing();
                  },
                  child: Text("Comments Data"),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: comments_providert!.postList.length,
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
                        leading: Text("${comments_providert!.postList[index].id}"),
                        title: Text("${comments_providert!.postList[index].postId}"),
                        subtitle: Text("${comments_providert!.postList[index].name}"),
                        trailing: Text("${comments_providert!.postList[index].email}"),
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

