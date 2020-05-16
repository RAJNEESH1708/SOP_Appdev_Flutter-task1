import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', 'YES'),
    Question('You can lead a cow down stairs but not up stairs.', 'NO'),
    Question('Approximately one quarter of human bones are in the feet.', 'YES'),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', 'YES'),
    Question('It is illegal to pee in the Ocean in Portugal.', 'YES'),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        'NO'),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        'YES'),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        'NO'),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        'YES'),
    Question('Google was originally called \"Backrub\".', 'YES'),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        'YES'),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        'YES'),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished()  {
    if(_questionNumber < _questionBank.length-1)
      return false;
    else if(_questionNumber == _questionBank.length-1)
      return true;
  }

   void reset(){
   _questionNumber=0;
 }
}
