import 'package:flutter/material.dart';
import 'main.dart';
import 'intro.dart';

class Score extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(20.0),
                  child: Text(
                    'Your Score',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      finalScore.toString(),
                      style: TextStyle(
                        fontSize: 100.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                  height: 60.0,
                  width: double.infinity,
                  color: Colors.yellowAccent,
                  child: Center(
                    child: Text(
                      'Go to Home Page!',
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
    );;
  }
}
