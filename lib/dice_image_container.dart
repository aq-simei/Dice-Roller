import 'package:flutter/material.dart';

class DiceImageContainer extends StatelessWidget {
  const DiceImageContainer({super.key, required this.face});

  final int face;

  static const String _diceFaceOnePath = "assets/images/dice-1.png";
  static const String _diceFaceTwoPath = "assets/images/dice-2.png";
  static const String _diceFaceTreePath = "assets/images/dice-3.png";
  static const String _diceFaceFourPath = "assets/images/dice-4.png";
  static const String _diceFaceFivePath = "assets/images/dice-5.png";
  static const String _diceFaceSixPath = "assets/images/dice-6.png";

  String getFaceImage(int faceSide) {
    switch (faceSide) {
      case 1:
        return _diceFaceOnePath;
      case 2:
        return _diceFaceTwoPath;
      case 3:
        return _diceFaceTreePath;
      case 4:
        return _diceFaceFourPath;
      case 5:
        return _diceFaceFivePath;
      case 6:
        return _diceFaceSixPath;
      default:
        throw "Invalid face side: $faceSide";
    }
  }

  @override
  Widget build(context) {

    var shownImage = getFaceImage(face);

    return Center(
      child: Image.asset(
      shownImage,
      width: 200,
  ),  
    );
  }
}
