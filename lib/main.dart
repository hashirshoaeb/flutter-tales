import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './asserts/Q.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  // int ctr=0;
  final questions = [
    new Q(questionText: "What is your favorite color?", answers: [
      'black',
      'white',
      'yellow',
    ]),
    new Q(questionText: "What is your favorite animal?", answers: [
      'bear',
      'cat',
      'dog',
    ]),
    new Q(questionText: "What is your favorite food?", answers: [
      'bilyaani',
      'nali boti',
      'nehari',
      'choclate',
    ]),
    new Q(questionText: 'which song do you like', answers: [
      'mela loot liya',
      'tyaar ho',
      'phir seeti bajy gi',
      'tm jeeeto ya haro',
    ]),
  ];

  void answerQuestion() {
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
