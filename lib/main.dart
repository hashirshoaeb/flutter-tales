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
  int _questionIndex = 0;
  var _finalScore = 0;
  // int ctr=0;
  final questions = const [
    {
      'questionText': "What is your favorite color?",
      'answers': [
        {"text": 'black', "score": 2},
        {"text": 'white', "score": 4},
        {"text": 'yellow', "score": 8}
      ],
    },
    {
      'questionText': "What is your favorite animal?",
      'answers': [
        {"text": 'bear', "score": 2},
        {"text": 'cat', "score": 4},
        {"text": 'dog', "score": 8}
      ],
    },
    {
      'questionText': "What is your favorite food?",
      'answers': [
        {"text": 'bilyaani', "score": 2},
        {"text": 'nali boti', "score": 4},
        {"text": 'nehari', "score": 8},
        {"text": 'choclate', "score": 16}
      ],
    },
    {
      'questionText': 'which song do you like',
      'answers': [
        {"text": 'mela loot liya', "score": 2},
        {"text": 'tyaar ho', "score": 4},
        {"text": 'phir seeti bajy gi', "score": 8},
        {"text": 'tm jeeeto ya haro', "score": 16}
      ],
    },
  ];

  void answerQuestion(int score) {
    _finalScore = _finalScore + score;
    setState(() {
      _questionIndex++;
    });
  }

  Widget build(BuildContext context) {
    print(_questionIndex);
    print(questions.length);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first design app'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: _questionIndex < questions.length
              ? Quiz(
                  question: this.questions,
                  questionIndex: this._questionIndex,
                  answerQuestion: this.answerQuestion)
              : Result(_finalScore),
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
