import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/presentation/widgets/list_item.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(26, 100, 26, 0),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 9,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (BuildContext context, int index) {
                      return ListItem();
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(26, 180, 26, 40),
              child: FloatingActionButton(
                child: Container(
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  width: 200,
                  height: 40,
                  child: const Text('Play Again'),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
