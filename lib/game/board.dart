import 'package:flutter/material.dart';
import 'dice.dart';
import 'token.dart';

class LudoBoard extends StatefulWidget {
  const LudoBoard({super.key});

  @override
  _LudoBoardState createState() => _LudoBoardState();
}

class _LudoBoardState extends State<LudoBoard> {
  int diceValue = 1;

  void updateDice(int value) {
    setState(() {
      diceValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ludo Mini App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Placeholder Ludo board (15x15 grid)
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: GridView.count(
                crossAxisCount: 15,
                children: List.generate(225, (index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.5),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 20),
            // Tokens (placeholder)
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LudoToken(color: Colors.red),
                LudoToken(color: Colors.blue),
                LudoToken(color: Colors.green),
                LudoToken(color: Colors.yellow),
              ],
            ),
            const SizedBox(height: 20),
            // Dice
            DiceRoller(onRoll: updateDice),
            const SizedBox(height: 10),
            Text('Dice: $diceValue', style: const TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
