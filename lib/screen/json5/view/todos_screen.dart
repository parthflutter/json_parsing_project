import 'package:flutter/material.dart';
import 'package:json_parsing_project/screen/json5/provider/todos_provider.dart';
import 'package:provider/provider.dart';

class Todos_screen extends StatefulWidget {
  const Todos_screen({Key? key}) : super(key: key);

  @override
  State<Todos_screen> createState() => _Todos_screenState();
}
Todos_provider?todos_providert,todos_providerf;
class _Todos_screenState extends State<Todos_screen> {
  @override
  Widget build(BuildContext context) {
    todos_providerf= Provider.of<Todos_provider>(context,listen: false);
    todos_providert= Provider.of<Todos_provider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Todos Json"),
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
                    todos_providerf!.JsonParsing();
                  },
                  child: Text("Todos Data"),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: todos_providert!.postList.length,
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
                        leading: Text("${todos_providert!.postList[index].id}"),
                        title: Text("${todos_providert!.postList[index].userId}"),
                        subtitle: Text("${todos_providert!.postList[index].title}"),
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


