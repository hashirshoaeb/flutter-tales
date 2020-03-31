import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  // int ctr=0;
  final question = const [
    {
      'questionText': "What is your favorite color?",
      'answers': [
        'black',
        'white',
        'yellow',
      ],
    },
    {
      'questionText': "What is your favorite animal?",
      'answers': [
        'bear',
        'cat',
        'dog',
      ],
    },
    {
      'questionText': "What is your favorite food?",
      'answers': [
        'bilyaani',
        'nali boti',
        'nehari',
        'choclate',
      ],
    },
    {
      'questionText': 'which song do you like',
      'answers': [
        'mela loot liya',
        'tyaar ho',
        'phir seeti bajy gi',
        'tm jeeeto ya haro',
      ],
    },
  ];

  void count(int index) {
    setState(() {
      _counter++;
    });
  }

  Widget build(BuildContext context) {
    print(_counter);
    print(question.length);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first design app'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: _counter < question.length
              ? Quiz(
                  question: this.question,
                  counter: this._counter,
                  count: this.count)
              : Result(),
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
