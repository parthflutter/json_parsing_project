import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_parsing_project/screen/json_project/provider/post_provider.dart';
import 'package:provider/provider.dart';

class post_screen extends StatefulWidget {
  const post_screen({Key? key}) : super(key: key);

  @override
  State<post_screen> createState() => _post_screenState();
}

Post_provider? post_providert, post_providerf;

class _post_screenState extends State<post_screen> {
  @override
  Widget build(BuildContext context) {
    post_providert= Provider.of<Post_provider>(context,listen: true);
    post_providerf= Provider.of<Post_provider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Post Json"),
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
                    post_providerf!.JsonParsing();
                  },
                  child: Text("Post Data"),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: post_providert!.postList.length,
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
                        leading: Text("${post_providert!.postList[index].id}"),
                        title: Text("${post_providert!.postList[index].userId}"),
                        subtitle: Text("${post_providert!.postList[index].title}"),
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
