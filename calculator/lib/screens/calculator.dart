import 'package:calculator/widgets/button_characters.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() {
    return _CalculatorState();
  }
}

class _CalculatorState extends State<Calculator> {
  String input = '';
  String result = '';

  void calculate(String operation, input) {
    switch (operation) {
      case "+":
        break;
      case "-":
        break;
      case "*":
        break;
      case "/":
        break;
      case "%":
        break;
      default:
        Error;
    }
  }

  void characterPressed(dynamic buttonText) {
    setState(() {
      if (buttonText == "AC") {
        input = '';
        result = '';
      } else if (buttonText == '=') {
      } else if (buttonText == Icons.backspace_outlined) {
        if (input.isNotEmpty) {
          input = input.substring(0, input.length - 1);
        }
      } else {
        input += buttonText.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.topRight,
                color: Color(0xFFF9F9F9),
                child: Text(
                  input,
                  style: TextStyle(color: Colors.black, fontSize: 40),
                ),
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.bottomRight,

                color: Color(0xFFF9F9F9),
                child: Text(
                  result,
                  style: TextStyle(color: Colors.black, fontSize: 40),
                ),
              ),
            ],
          ),
        ),
        GridView(
          padding: EdgeInsets.all(16),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          children: [
            ButtonCharacters(
              buttonContent: "AC",
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: "( )",
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: "%",
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: "/",
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: 7,
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: 8,
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: 9,
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: "*",
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: 4,
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: 5,
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: 6,
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: "-",
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: 1,
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: 2,
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: 3,
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: "+",
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: 0,
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: ".",
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: Icons.backspace_outlined,
              onCharacterPressed: characterPressed,
            ),
            ButtonCharacters(
              buttonContent: "=",
              onCharacterPressed: characterPressed,
            ),
          ],
        ),
      ],
    );
  }
}
