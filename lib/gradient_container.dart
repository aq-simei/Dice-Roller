import 'package:first_test_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  const GradientContainer.purple({super.key, colors})
      : colors = const [Colors.purple, Colors.purpleAccent];

  final List<Color> colors;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  } // build
}
