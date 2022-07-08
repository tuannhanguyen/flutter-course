import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color ?',
      'What\'s your favourite animal'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My First App',
          ),
        ),
        body: Column(children: [
          Text(questions[questionIndex]),
          RaisedButton(child: Text('Question 1'), onPressed: answerQuestion),
          RaisedButton(
              child: Text('Question 2'),
              onPressed: () => print('Answer chosen 2 !')),
          RaisedButton(
              child: Text('Question 3'),
              onPressed: () {
                print('Answer chosen 3 !');
              })
        ]),
      ),
    );
  }
}
