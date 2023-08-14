import 'package:flutter/material.dart';

class CircleNumberWidget extends StatelessWidget {
  const CircleNumberWidget(this.circleNumber, this.circleColor,
      {super.key}); // Set your desired color here

  final Color circleColor;
  final int circleNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: circleColor,
      ),
      child: Center(
        child: Text(
          (circleNumber.toString()), // Your desired number here
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
