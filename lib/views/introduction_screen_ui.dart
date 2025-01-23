import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/home02_ui.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreenUI extends StatefulWidget {
  const IntroScreenUI({super.key});

  @override
  State<IntroScreenUI> createState() => _IntroScreenUIState();
}

class _IntroScreenUIState extends State<IntroScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(pages: [
      PageViewModel(
        title: "Page 1",
        body: "I love working overtime",
        image: Image.asset(
          "assets/images/pic01.png",
          width: MediaQuery.of(context).size.width * 0.6,
        ),
      ),
      PageViewModel(
        title: "Page 2",
        body: "I love working overtime",
        image: Image.asset(
          "assets/images/pic02.png",
          width: MediaQuery.of(context).size.width * 0.6,
        ),
      ),
      PageViewModel(
        title: "Page 3",
        body: "I love working overtime",
        image: Image.asset(
          "assets/images/pic03.png",
          width: MediaQuery.of(context).size.width * 0.6,
        ),
      ),
      PageViewModel(
        title: "Page 4",
        body: "I love working overtime",
        image: Image.asset(
          "assets/images/pic04.png",
          width: MediaQuery.of(context).size.width * 0.6,
        ),
      ),
      PageViewModel(
        title: "Page 5",
        body: "I love working overtime",
        image: Image.asset(
          "assets/images/pic05.png",
          width: MediaQuery.of(context).size.width * 0.6,
        ),
      ),
    ],
    showSkipButton: true,
    skip: Text(
      "Skip",
    ),
    showDoneButton: true,
    done: Text(
      "Done",
    ),
    showNextButton: true,
    next: Text(
      "Next",
    ),
    onDone: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home02UI())),
    scrollPhysics: ScrollPhysics(parent: BouncingScrollPhysics()),
    ));
  }
}
