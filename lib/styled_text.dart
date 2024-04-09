import "package:flutter/material.dart";


class StyledText extends StatelessWidget {
  static const String defaultText = "Default Home screen Text";

  const StyledText({super.key, required this.shownText,});
  
  final String shownText;

  @override
  Widget build(context){
    return Center(
            child: Text(
            shownText,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.black),
            ),
          );
  }
}
