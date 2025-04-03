import 'package:calculator/widgets/button_characters.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(width: double.infinity, color: Color(0xFFF9F9F9)),
        ),
        GridView(
          padding: EdgeInsets.all(16),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          children: [
            ButtonCharacters(buttonContent: "AC"),
            ButtonCharacters(buttonContent: "( )"),
            ButtonCharacters(buttonContent: "%"),
            ButtonCharacters(buttonContent: "/"),
            ButtonCharacters(buttonContent: 7),
            ButtonCharacters(buttonContent: 8),
            ButtonCharacters(buttonContent: 9),
            ButtonCharacters(buttonContent: "*"),
            ButtonCharacters(buttonContent: 4),
            ButtonCharacters(buttonContent: 5),
            ButtonCharacters(buttonContent: 6),
            ButtonCharacters(buttonContent: "-"),
            ButtonCharacters(buttonContent: 1),
            ButtonCharacters(buttonContent: 2),
            ButtonCharacters(buttonContent: 3),
            ButtonCharacters(buttonContent: "+"),
            ButtonCharacters(buttonContent: 0),
            ButtonCharacters(buttonContent: "."),
            ButtonCharacters(buttonContent: Icons.backspace_outlined),
            ButtonCharacters(buttonContent: "="),
          ],
        ),
      ],
    );
  }
}
