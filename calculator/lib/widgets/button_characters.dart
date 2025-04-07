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
          color:
              buttonContent is String &&
                      ['+', '-', '*', '/', '='].contains(buttonContent)
                  ? Colors.orange
                  : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
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
