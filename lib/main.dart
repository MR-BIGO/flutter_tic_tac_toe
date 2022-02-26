import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/presentation/screens/intro_slider.dart';

import 'presentation/screens/home_screen.dart';
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
      initialRoute: "/introScreen",
      routes: {
        "/homeScreen": (context) => const HomeScreen(),
        "/gameScreen": (context) => const GameScreen(),
        "/introScreen": (context) => IntroSliderScreen(),
      },
    );
  }
}
