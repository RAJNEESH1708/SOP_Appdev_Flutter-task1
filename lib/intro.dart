import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quiz_brain.dart';
import 'main.dart';
import 'score.dart';

QuizBrain quizBrain = QuizBrain();
int  currentScore=10;
int finalScore = 0;

class Quizy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzy'),
          backgroundColor: Colors.black54,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [ Colors.deepOrange, Colors.orangeAccent,]
                    ),
                  ),
                  child: QuizPage(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {


  void checkAnswer(String userPickedAnswer) {
    String correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      if( quizBrain.isFinished() == true) {
        Navigator.push(context, MaterialPageRoute(
          builder: (context){
           return Score();
          }
        ),
        );
        quizBrain.reset();
        currentScore=0;
      }

      else {
        if (userPickedAnswer == correctAnswer) {
          currentScore+=10;
          finalScore=currentScore;

        } else {
          finalScore =0 ;
        }
        quizBrain.nextQuestion();
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: GoogleFonts.lobsterTwo(
                  textStyle: TextStyle(color: Colors.white, letterSpacing: .5,fontSize: 35.0),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'YES',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                checkAnswer('YES');
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'NO',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                checkAnswer('NO');
              },
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Welcome();
                }
            ),
            );
          },
          child: Container(
            height: 30.0,
            width: 50.0,
            color: Colors.yellowAccent,
            child: Center(
              child: Text(
                'Quit!',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );

  }
}




