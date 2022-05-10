import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/logic/game_provider.dart';
import 'package:flutter_tic_tac_toe/presentation/widgets/list_item.dart';
import 'package:provider/src/provider.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        color: Colors.amber[700],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(26, 80, 26, 50),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 9,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (BuildContext context, int index) {
                      return ListItem(
                        index: index,
                      );
                    }),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(26, 100, 26, 40),
                child: SizedBox(
                  width: 120,
                  height: 50,
                  child: FloatingActionButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    backgroundColor: Colors.cyan[700],
                   elevation: 0,
                    child: const Text(
                      'Play Again',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      context.read<GameProvider>().restart();
                    },
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
