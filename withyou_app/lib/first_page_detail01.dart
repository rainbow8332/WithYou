// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// class FirstPageDetail01Page extends StatefulWidget {
//   const FirstPageDetail01Page({super.key});

//   @override
//   State<FirstPageDetail01Page> createState() => _FirstPageDetail01PageState();
// }

// class _FirstPageDetail01PageState extends State<FirstPageDetail01Page> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // 햄버거 color
//         iconTheme: const IconThemeData(
//           color: Colors.black,
//         ),
//         // elevation: 0,
//         title: Center(
//           child: SizedBox(
//             height: 35,
//             child: Image.asset(
//               'images/logo04.png',
//             ),
//           ),
//         ),
//         backgroundColor: Colors.white,
//         actions: const [
//           Padding(
//             padding: EdgeInsets.only(right: 15, top: 5),
//             child: Icon(
//               CupertinoIcons.bell_fill,
//               color: Colors.black,
//               size: 30,
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Card(
//                     child: Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Row(
//                         children: [
//                           Column(
//                             children: [
//                               Container(
//                                 height: 80,
//                                 width: 80,
//                                 child: const CircleAvatar(
//                                   backgroundImage: AssetImage(
//                                     'images/poodel.png',
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),

//                           Padding(
//                             padding: const EdgeInsets.only(left: 10),
//                             child: Column(
//                                         children: const [
//                                           Text(' 견종 :'),
//                                           Text(' 성별 :'),
//                                           Text('내용')
//                                         ],
//                                       ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),

//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

// }

import 'package:file/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/cupertino.dart';
import 'package:withyou_app/databaseHelper.dart';
import 'package:withyou_app/model/grocery.dart';

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
  int? setStateId;
  final textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          controller: textcontroller,
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
      body: Center(
        child: FutureBuilder<List<Grocery>>(
          future: DatabaseHelper.instance.getGroceries(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Grocery>> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: Text('Loading....'),
              );
            }
            return snapshot.data!.isEmpty
                ? Center(
                    child: Text('No Groceries in List.'),
                  )
                : ListView(
                    children: snapshot.data!.map((grocery) {
                      return Center(
                        child: ListTile(
                          title: Text(grocery.name),
                          onTap: () {
                            setState(() {
                              textcontroller.text = grocery.name;
                              setStateId = grocery.id;
                            });
                          },
                          onLongPress: () {
                            setState(() {
                              DatabaseHelper.instance.remove(grocery.id!);
                            });
                          },
                        ),
                      );
                    }).toList(),
                  );
          },
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(30.0),
        child: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () async{
            setStateId != null
            ? await DatabaseHelper.instance.update(
              Grocery(id: setStateId, name: textcontroller.text)
            )
            :
            await DatabaseHelper.instance.add(
              Grocery(name: textcontroller.text),
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 35.0,
          ),
        ),
      ),
    );
  }
}
