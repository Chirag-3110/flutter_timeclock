import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String title;

  const ScreenTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 40,
            color: Color.fromARGB(255, 80, 79, 79)),
      ),
    );
  }
}
