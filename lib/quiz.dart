import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class MyQuiz extends StatefulWidget {
  const MyQuiz({super.key});

  @override
  State<MyQuiz> createState() => _MyQuizState();
}

class _MyQuizState extends State<MyQuiz> {
  /*void switchScreen() {
    setState(() {
      //activeScreen = const QuestionsScreen();
      if (activeScreen == 'start-screen') {
        activeScreen = 'questions-screen';
      } else if (activeScreen == 'questions-screen') {
        activeScreen = 'result-screen';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      currentScreen = QuestionsScreen(switchScreen);
    } else if (activeScreen == 'result-screen') {
      currentScreen = const ResultScreen();
  }*/

  //Widget? activeScreen;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  var activeScreen = 'start-screen';
  final List<String> selectedAnswers = [];

  //taken as argument(startQuiz) in start_screen
  //to switch to questions_screen
  void switchScreen() {
    setState(() {
      //activeScreen = const QuestionsScreen();
      activeScreen = 'questions-screen';
    });
  }

  //taken as argument(onSelectAnswer) in questions_screen
  //to save chosen answers and switch to result_screen
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restart() {
    setState(() {
      activeScreen = 'start-screen';
      selectedAnswers.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      currentScreen = QuestionsScreen(chooseAnswer);
    } else if (activeScreen == 'result-screen') {
      currentScreen = ResultScreen(selectedAnswers, restart);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 85, 18, 201),
                Color.fromARGB(255, 106, 58, 190)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}
