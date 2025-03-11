import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
    this.restartQuiz, {
    super.key,
    required this.chosenAnswers,
  });
  final Function() restartQuiz;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answer": chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummary();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions =
        summaryData.where((data) {
          return data['user_answer'] == data['correct_answer'];
        }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 237, 183),
                fontSize: 20,
              ),
              "You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            QuestionsSummary(summaryData),
            SizedBox(height: 30),
            TextButton.icon(
              icon: const Icon(Icons.refresh, color: Colors.white),
              onPressed: restartQuiz,
              label: const Text(
                style: TextStyle(color: Colors.white),
                "Restart quiz!",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
