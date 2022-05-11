import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/logic/game_provider.dart';
import 'package:provider/src/provider.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<GameProvider>().playerTurn(index);
        if (context.read<GameProvider>().winner != "") {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              backgroundColor: Colors.yellow[100],
              title: const Text(
                'The end result',
                textAlign: TextAlign.center,
              ),
              content: Text(
                Provider.of<GameProvider>(context, listen: false).winner,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    context.read<GameProvider>().restart();
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Ok",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
          child: ListTile(
            textColor: Colors.indigoAccent[700],
            title: Text(
              context.watch<GameProvider>().symbols[index],
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange[800]),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
