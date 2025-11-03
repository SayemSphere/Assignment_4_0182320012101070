import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  int correctOption;

  Question(this.questionText, this.options, this.correctOption);

  bool checkAnswer(int userAnswer) => userAnswer == correctOption;
}

class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void start() {
    for (var i = 0; i < questions.length; i++) {
      var q = questions[i];
      print('\nQ${i + 1}: ${q.questionText}');
      for (var j = 0; j < q.options.length; j++) {
        print('${j + 1}. ${q.options[j]}');
      }

      stdout.write('Your answer: ');
      var input = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

      if (q.checkAnswer(input)) {
        print('Correct!');
        score++;
      } else {
        print('Wrong! The correct answer is ${q.correctOption}');
      }
    }

    print('\nQuiz finished. Your score: $score/${questions.length}');
  }
}

void main() {
  var questions = [
    Question('What is the capital of Bangladesh?', ['Dhaka', 'Chittagong', 'Sylhet'], 1),
    Question('Which language is used for Flutter?', ['Python', 'Dart', 'Java'], 2),
    Question('Who developed Flutter?', ['Microsoft', 'Apple', 'Google'], 3),
  ];

  var quiz = Quiz(questions);
  quiz.start();
}
