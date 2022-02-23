import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/presentation/widgets/help_bottomsheet.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Tic Tac Toe",
          style: TextStyle(
              fontSize: 40,
              color: Colors.amber[400],
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Colors.red[400],
          image: const DecorationImage(
            image: AssetImage('assets/images/asset_image.png'),
            fit: BoxFit.scaleDown,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
              child: SizedBox(
                width: 250,
                height: 60,
                child: FloatingActionButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: const Text(
                    "start",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                  heroTag: "startbtn",
                  backgroundColor: Colors.amber[400],
                  elevation: 4,
                  onPressed: () {
                    Navigator.pushNamed(context, "/gameScreen");
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 32),
              child: SizedBox(
                child: FloatingActionButton(
                  heroTag: "helpbtn",
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => HelpSheet(),
                    );
                  },
                  child: const Text(
                    "Help",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
