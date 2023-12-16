import 'package:flutter/material.dart';
import 'bottom_bar.dart';
import 'bottom_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stock Life"),
      ),
      // backgroundColor: ,
      body: Column(
        children: [
          Expanded(child: <Widget>children)
            
          )
        ],
      )

      //     ListView.builder(
      //   itemCount: list__view.length,
      //   itemBuilder: context(),
      // )
      ,
      floatingActionButton: TextButton(
        onPressed: () {
          setState(() {});
        },
      ),
    );
  }
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