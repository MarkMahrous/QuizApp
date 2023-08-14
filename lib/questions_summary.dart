import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/circle_number.dart';

class QestionsSummary extends StatelessWidget {
  const QestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map(
                (data) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleNumberWidget(
                      (data['question_index'] as int) + 1,
                      data['correct_answer'] == data['user_answer']
                          ? const Color.fromARGB(255, 150, 198, 241)
                          : const Color.fromARGB(255, 249, 133, 241),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 43, 255, 0),
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            data['user_answer'] as String,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 255, 230, 0),
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
