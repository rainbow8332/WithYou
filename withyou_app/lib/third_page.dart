import 'package:flutter/material.dart';
import 'package:custom_grid_view/custom_grid_view.dart';

class ThirtPage extends StatefulWidget {
  const ThirtPage({super.key});

  @override
  State<ThirtPage> createState() => _ThirtPageState();
}

class _ThirtPageState extends State<ThirtPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Image.asset(
            'images/subtitle2.png',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Image.asset(
                'images/subtitle7.png',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text('5',
            style: TextStyle(
              color: Colors.red,
              fontSize: 30
            ),
            ),
          ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 30,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // 한줄 갯수
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      // border: Border.all(
                      //   width: 1,
                      //   color: Colors.black,
                      // ),
                      borderRadius: BorderRadius.circular(
                        12.0,
                      ),
                      color: Color.fromARGB(255, 240, 246, 205)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
              'images/foot.png',
            ),
                        ),
                      ),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}

// import 'package:flutter/material.dart';

// class ThirtPage extends StatefulWidget {
//   const ThirtPage({super.key});


//   @override
//   State<ThirtPage> createState() => _ThirtPageState();
// }

// class _ThirtPageState extends State<ThirtPage> {
//   List<String> widgetList = [
//     'images/foot.png', 
//     'images/foot.png', 
//     'images/foot.png', 
//     ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       body: GridView.count(
//         crossAxisCount: 2,
//         controller: ScrollController(keepScrollOffset: false),
//         shrinkWrap: true,
//         scrollDirection: Axis.vertical,
//         children: widgetList.map((String value) {
//           return Container(
//             height: 250.0,
//             color: Colors.green,
//             margin: EdgeInsets.all(1.0),
//             child: Center(
//               child: Image.asset(
//             value,
//           ),
//             ),
//           );
//         }).toList(),
//       ),
    
//     );
//   }
// }


