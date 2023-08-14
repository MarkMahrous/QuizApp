import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answer, required this.action});

  final String answer;
  final void Function() action;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 56, 10, 134),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        answer,
        style: const TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }
}
