import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(92, 46, 171, 1),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(50),
                child: Image.asset('assets/images/quiz-logo.png'),
              ),
              const Text(
                'Learn Flutter the fun way!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  'Start Quiz',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class MyBody extends StatelessWidget {
//   @override
//   Widget build(context) {
//     return ;
//   }
// }
