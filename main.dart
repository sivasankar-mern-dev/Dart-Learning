import "dart:io";
import "dart:math";


promptDouble(String? promptText) {
  print(promptText);
  var myNum = stdin.readLineSync();
  if(myNum != null){
    var parsedValue = double.parse(myNum);
    return parsedValue;
  }
}

class MathQuestion {
  String? question;
  double? answer;

  MathQuestion(String question, double answer) {
    this.question = question;
    this.answer = answer;
  }
}

void main() {

  List<MathQuestion> questions = [
    MathQuestion("10 + 5", 15),
    MathQuestion("40 - 20", 20),
    MathQuestion("5 * 5", 25)
  ];

  int score = 0;

  for(MathQuestion mathQuestion in questions) {
    double userAnswer = promptDouble(mathQuestion.question);
    if(userAnswer == mathQuestion.answer) {
      score++;
    }
  }

  print("You got score of ${score}/${questions.length}");
  
}
