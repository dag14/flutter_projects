import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: (Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            color: const Color.fromARGB(113, 255, 255, 255),
            width: 300,
          ),
          const SizedBox(height: 80),
          Text(
            "Learning Flutter the fun way!",
            style: TextStyle(
              color: const Color.fromARGB(255, 237, 223, 252),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(color: Colors.white, Icons.arrow_right_alt),
            label: const Text("Start Quiz!"),
          ),
        ],
      )),
    );
  }
}
