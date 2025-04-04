import 'package:flutter/material.dart';

class ButtonCharacters extends StatelessWidget {
  const ButtonCharacters({
    super.key,
    required this.buttonContent,
    required this.onCharacterPressed,
  });
  final dynamic buttonContent;
  final Function(dynamic) onCharacterPressed;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonSize = screenWidth / 4 - 16;

    return InkWell(
      onTap: () {
        onCharacterPressed(buttonContent);
      },
      borderRadius: BorderRadius.circular(buttonSize / 2),
      child: Container(
        width: buttonSize,
        height: buttonSize,

        margin: EdgeInsets.all(4),
        // width: screenWidth / 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(120),
          color: Colors.white,
        ),
        child: Center(
          child:
              buttonContent is IconData
                  ? Icon(buttonContent, color: Colors.black, size: 30)
                  : Text(
                    style: TextStyle(color: Colors.black, fontSize: 30),
                    "$buttonContent",
                  ),
        ),
      ),
    );
  }
}
