import 'package:flutter/material.dart';
import 'main.dart';
import 'bottom_bar.dart';

import 'tabIcons.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final tabIcon = <Widget>[
    const Icon(MyFlutterApp.trending_up,
        size: 80, color: Color.fromARGB(255, 45, 143, 223)),
    const Icon(MyFlutterApp.featured_play_list,
        size: 80, color: Color.fromARGB(255, 45, 143, 223)),
    const Icon(MyFlutterApp.featured_video,
        size: 80, color: Color.fromARGB(255, 45, 143, 223)),
    const Icon(MyFlutterApp.assessment,
        size: 80, color: Color.fromARGB(255, 45, 143, 223)),
    const Icon(MyFlutterApp.clock,
        size: 80, color: Color.fromARGB(255, 45, 143, 223)),
    const Icon(MyFlutterApp.add_circle_outline,
        size: 80, color: Color.fromARGB(255, 45, 143, 223)),

    // const Icon(MyFlutterApp.file_download),
    // const Icon(MyFlutterApp.format_list_bulleted),
  ];

  List<String> tabIconTitle = [
    "Trend",
    "Stock Quotation",
    "Optional quotation",
    "Features",
    "After-Hour Data",
    "Order"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stock Sardin Search"),
      ),
      // backgroundColor: ,
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Sets'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Account'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Detail'),
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          // getAPP(),
          Expanded(
            child: Container(
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 5,
                    left: 5,
                    right: 5,
                  ),
                  child: GridView(
                      children: List.generate(
                        tabIcon.length,
                        (index) {
                          return Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(0),
                                  border: Border.all(
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      width: 10,
                                      color:
                                          Color.fromARGB(200, 112, 96, 255))),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    tabIcon[index],
                                    // color: Colors.blue[200],
                                    // size: 80,
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 20,
                                      ),
                                    ),
                                    Text("${tabIconTitle[index]}",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 45, 143, 223),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold))
                                  ]));
                        },
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        // mainAxisSpacing: 8.0,
                        // crossAxisSpacing: 8.0,
                        childAspectRatio: 1.0,
                      )),
                )),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.home,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.featured_play_list,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.earth,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.add_circle_outline,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.file_download,
              color: Colors.grey,
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  // Widget buttomBar() {
  //   return Column(
  //     children: <Widget>[
  //       Expanded(
  //         child: SizedBox(),
  //       ),
  //       // Flex(
  //         // direction: Axis.horizontal,
  //         Column(
  //           children: [
  //           Icon(MyFlutterApp.home),
  //           Icon(MyFlutterApp.featured_play_list),
  //           Icon(MyFlutterApp.earth),
  //           Icon(MyFlutterApp.add_circle_outline),
  //           Icon(MyFlutterApp.file_download),
  //         ],
  //         )

  //       // ),
  //     ],
  //   );
  // }
}






// children: [
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (content) => Page1()),
//               );
//             },
//             child: Text("Page1"),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (content) => Page2()),
//               );
//             },
//             child: Text("Page2"),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (content) => Page3()),
//               );
//             },
//             child: Text("Page3"),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (content) => Page4()),
//               );
//             },
//             child: Text("Page4"),
//           ),
//         ],