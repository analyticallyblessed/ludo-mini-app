import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatelessWidget {
  final Function(int) onRoll;

  const DiceRoller({super.key, required this.onRoll});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final value = Random().nextInt(6) + 1;
        onRoll(value);
      },
      child: const Text('Roll Dice'),
    );
  }
}
