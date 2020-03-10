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
  final question = [
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
      _counter[index]++;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first design app'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: <Widget>[
              new Question(
                  questionType: this.question[this._counter[0]]
                      ['questionText']),
              ...(this.question[this._counter[0]]['answers'] as List<String>)
                  .map((ans) => new Answer(
                        text: ans,
                        onpressed: () => count(0),
                      )),
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
