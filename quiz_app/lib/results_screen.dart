import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          children: [
            Text("This is the results screen"),
            SizedBox(height: 30),
            Text("List of questions and answers"),
            SizedBox(height: 30),
            TextButton(onPressed: () {}, child: const Text("Restart quiz!")),
          ],
        ),
      ),
    );
  }
}
