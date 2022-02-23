import 'package:flutter/material.dart';

import 'presentation/screens/first_screen.dart';
import 'presentation/screens/game_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tic Tac Toe",
      initialRoute: "/firstScreen",
      routes: {
        "/firstScreen": (context) => const FirstScreen(),
        "/gameScreen": (context) => const GameScreen(),
      },
    );
  }
}
