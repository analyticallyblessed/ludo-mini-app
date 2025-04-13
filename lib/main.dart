import 'package:flutter/material.dart';
import 'game/board.dart';

void main() {
  runApp(const LudoMiniApp());
}

class LudoMiniApp extends StatelessWidget {
  const LudoMiniApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ludo Mini App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const - for light/dark mode syncing with Telegram
      home: const LudoBoard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
