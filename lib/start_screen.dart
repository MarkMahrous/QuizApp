import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(166, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 239, 233, 243),
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 25),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: startQuiz,
          ),
        ],
      ),
    );
  }
}
