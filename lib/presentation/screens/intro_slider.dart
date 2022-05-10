import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroSliderScreen extends StatefulWidget {
  const IntroSliderScreen({Key? key}) : super(key: key);

  @override
  State<IntroSliderScreen> createState() => _IntroSliderScreenState();
}

class _IntroSliderScreenState extends State<IntroSliderScreen> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();
    slides.add(
      Slide(
        title: "WELCOME",
        description:
            "This is a game called 'Tic Tac Toe'. This game is played in duos, so to compete with someone, you need two of you to be close.",
        pathImage: "assets/images/smile.png",
      ),
    );
    slides.add(
      Slide(
        title: "Starting A Match",
        description:
            "Tic-tac-toe is a game in which two players take turns in drawing either an 'O' or an 'X' in one square of a grid consisting of nine squares",
        pathImage: "assets/images/intro_1.png",
      ),
    );
    slides.add(
      Slide(
        title: "Winning A Match",
        description:
            "The winner is the first player to get three of the same symbols in a row",
        pathImage: "assets/images/intro_2.png",
      ),
    );
    slides.add(
      Slide(
        title: "Draw",
        description:
            "If all the squares are already filled and none of you have won, then it is a draw",
        pathImage: "assets/images/intro_3.png",
      ),
    );
  }

  List<Widget> renderCustomTabs() {
    List<Widget> tabs = [];
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 60, 0, 160),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: Image.asset(
                    currentSlide.pathImage!,
                    matchTextDirection: true,
                    height: 90,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Text(
                    currentSlide.title!,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    currentSlide.description!,
                    style: const TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      color: Colors.black,
                      
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.center,
                  ),
                  margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      backgroundColorAllSlides: Colors.red[300],
      renderSkipBtn: const Text(
        "skip",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      renderNextBtn: Container(
        width: 90,
        height: 40,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Center(
          child: Text(
            "next",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      ),
      renderDoneBtn: Container(
        width: 90,
        height: 40,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Center(
          child: Text(
            "done",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      ),
      sizeDot: 8.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
      colorDot: Colors.white,
      colorActiveDot: Colors.green[700],
      scrollPhysics: const BouncingScrollPhysics(),
      onDonePress: () => Navigator.pushReplacementNamed(context, "/homeScreen"),
      listCustomTabs: renderCustomTabs(),
    );
  }
}
