import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'intro.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welcome(),
    );
  }
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzy'),
        backgroundColor: Colors.black54,
      ),

      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [ Colors.deepOrange, Colors.orangeAccent,]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(20.0),
                  child: Text(
                    'Welcome to Quizzy!',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(

                child: Container(
                  margin: EdgeInsets.all(10.0),
                  child: Text(
                    'There are Total 12 Questions. '
                        'For each correct Answer you will be awarded 10 points and 0 for wrong Answer.',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(

                child: Center(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    child: Text(
                      'Made by Rajneesh Pandey',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Quizy();
                      }
                  ),
                  );
                },
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                  color: Colors.yellowAccent,
                  child: Center(
                    child: Text(
                      'Get Started!',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],

          ),

        ),

      ),
    );
  }
}







