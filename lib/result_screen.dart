import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions_summary.dart';

import 'data/questions.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(this.chosenAnswers, this.restart, {super.key});

  final List<String> chosenAnswers;
  final void Function() restart;

  int correctAnswers = 0;
  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summary = getSummary();
    final numberOfQuestions = questions.length;
    final numberOfCorrectAnswers = summary
        .where((element) => element['correct_answer'] == element['user_answer'])
        .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numberOfCorrectAnswers out of $numberOfQuestions questions correcly!',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QestionsSummary(summary),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: restart,
              label: Text(
                'Restart Quiz!',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              icon: const Icon(
                Icons.restart_alt_sharp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
