import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                bool isCorrect = data['user_answer'] == data['correct_answer'];
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isCorrect ? Colors.blue : Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        ((data['question_index'] as int) + 1).toString(),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            data['question'] as String,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            style: TextStyle(
                              color: const Color.fromARGB(255, 225, 131, 241),
                            ),
                            data['user_answer'] as String,
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            style: TextStyle(color: Colors.blue),
                            data['correct_answer'] as String,
                          ),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}
