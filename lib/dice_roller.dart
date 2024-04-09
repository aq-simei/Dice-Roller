import 'dart:math';

import 'package:first_test_app/dice_image_container.dart';
import 'package:flutter/material.dart';

final Random random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int face = 5;

  void showAutoDismissAlert(BuildContext context) { 
    showDialog( 
      context: context,
      builder: (context) {
        // Schedule a delayed dismissal of the alert dialog after 3 seconds 
        Future.delayed(const Duration(seconds: 1), () { 
          Navigator.of(context).pop(); // Close the dialog 
        }); 
        // Return the AlertDialog widget 
        return AlertDialog( 
          title: Text("Dice Rolled! New Face is $face"), 
        ); 
      }, 
    );
  }


  void rollDice() {

    showAutoDismissAlert(context);

    int currentRoll = random.nextInt(6) + 1;
    
      setState((){
        face = currentRoll;
      });
    
      print("Dice rolled!");
    }


  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DiceImageContainer(face: face),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                shadowColor: Colors.black,
                padding: const EdgeInsets.all(15),
                elevation: 20,
                foregroundColor: Colors.white,
                backgroundColor: Colors.deepPurple,
                textStyle: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text("Roll"),
            ),
          ],
        );
  }
}
