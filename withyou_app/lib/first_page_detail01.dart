import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:withyou_app/databaseHelper.dart';
import 'package:withyou_app/model/grocery.dart';
import 'package:flutter/cupertino.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(FirstPageDetail01Page());
}

class FirstPageDetail01Page extends StatefulWidget {
  const FirstPageDetail01Page({super.key});

  @override
  State<FirstPageDetail01Page> createState() => _FirstPageDetail01PageState();
}

class _FirstPageDetail01PageState extends State<FirstPageDetail01Page> {
  int? selectedId;
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: TextField(
      //     controller: textController,
      //   ),
      // ),
      appBar: AppBar(
        // 햄버거 color
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        // elevation: 0,
        // title: Center(
        //   child: SizedBox(
        //     height: 35,
        //     child: Image.asset(
        //       'images/logo04.png',
        //     ),
        //   ),
        // ),
        title: TextField(
          controller: textController,
        ),
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15, top: 5),
            child: Icon(
              CupertinoIcons.bell_fill,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: FutureBuilder<List<Grocery>>(
          future: DatabaseHelper.instance.getGroceries(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Grocery>> snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: Text('Loading...'));
            }
            return snapshot.data!.isEmpty
                ? const Center(child: Text('No Groceries in List.'))
                : Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView(
                      children: snapshot.data!.map((grocery) {
                        return Center(
                          child: Card(
                            color: selectedId == grocery.id
                                ? Colors.white70
                                : Color.fromARGB(255, 215, 238, 226),
                            child: ListTile(
                              title: Padding(
                                padding: const EdgeInsets.only(top: 15,bottom: 15),
                                child: Text(grocery.name),
                              ),
                              onTap: () {
                                setState(() {
                                  if(selectedId == null){
                                  textController.text = grocery.name;
                                  selectedId = grocery.id;
                                  }else{
                                    textController.text = '';
                                    selectedId = null;
                                  }
                                });
                              },
                              onLongPress: () {
                                setState(() {
                                  DatabaseHelper.instance.remove(grocery.id!);
                                });
                              },
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add,
        color: Colors.black,
        size: 30.0,),
        onPressed: () async {
          selectedId != null
              ? await DatabaseHelper.instance.update(
                  Grocery(id: selectedId, name: textController.text),
                )
              : await DatabaseHelper.instance
                  .add(Grocery(name: textController.text));
          setState(() {
            textController.clear();
          });
        },
      ),
    );
  }
}
