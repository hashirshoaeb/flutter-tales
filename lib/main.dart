import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _counter = [0, 0, 0, 0];
  // int ctr=0;

  void count(int index) {
    setState(() {
      _counter[index]++;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: <Widget>[
              new Question(questionType: this._counter[0].toString()),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: () => count(0),
              ),
              Container(
                child: new Question(
                  questionType: this._counter[1].toString(),
                ),
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => {
                  setState(() => {_counter[1]++})
                },
              ),
              new Question(questionType: this._counter[2].toString()),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () => count(2),
              ),
              new Question(questionType: this._counter[3].toString()),
              new Answer(
                text: 'Answer 4',
                onpressed: () => {
                  setState(() => {_counter[3]++})
                },
              )
            ],
          ),
        ),
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
