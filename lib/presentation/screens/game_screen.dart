import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GridView.count(
              childAspectRatio: 2.4,
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                ListTile(
                  title: Text("data"),
                  tileColor: Colors.white,
                  selectedTileColor: Colors.white,
                ),
                ListTile(
                  title: Text("data"),
                  tileColor: Colors.white,
                  selectedTileColor: Colors.white,
                ),
                ListTile(
                  title: Text("data"),
                  tileColor: Colors.white,
                  selectedTileColor: Colors.white,
                ),
                ListTile(
                  title: Text("data"),
                  tileColor: Colors.white,
                  selectedTileColor: Colors.white,
                ),
                ListTile(
                  title: Text("data"),
                  tileColor: Colors.white,
                  selectedTileColor: Colors.white,
                ),
                ListTile(
                  title: Text("data"),
                  tileColor: Colors.white,
                  selectedTileColor: Colors.white,
                ),
                ListTile(
                  title: Text("data"),
                  tileColor: Colors.white,
                  selectedTileColor: Colors.white,
                ),
                ListTile(
                  title: Text("data"),
                  tileColor: Colors.white,
                  selectedTileColor: Colors.white,
                ),
                ListTile(
                  title: Text("data"),
                  tileColor: Colors.white,
                  selectedTileColor: Colors.white,
                ),
              ],
            ),
            FloatingActionButton(onPressed: () {})
          ],
        ),
      ),
    );
  }
}
