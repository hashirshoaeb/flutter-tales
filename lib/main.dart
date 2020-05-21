import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first design app'),
        ),
        body: Container(),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoTabScaffold(
//         tabBar: CupertinoTabBar(
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(CupertinoIcons.bluetooth),
//               title: Text('data'),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(CupertinoIcons.book),
//               title: Text('data'),
//             ),
//           ],
//         ),
//         tabBuilder: (context, i) {
//           return CupertinoTabView(
//             builder: (context) {
//               return CupertinoPageScaffold(
//                 navigationBar: CupertinoNavigationBar(
//                   middle: Text('data'),
//                 ),
//                 child: Center(
//                   child: Text('data $i'),
//                 ),
//               );
//             },
//           );
//         });
//   }
// }
