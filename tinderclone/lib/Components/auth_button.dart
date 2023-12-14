import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String title;
  final Function onpress;

  const AuthButton({required this.title, required this.onpress, super.key});

  @override
  Widget build(BuildContext context) {
    var dimansions = MediaQuery.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: dimansions.size.width - 50,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromARGB(255, 221, 221, 221),
      ),
      child: TextButton(
        onPressed: () => onpress(),
        child: Text(
          title,
          style: const TextStyle(
            color: Color.fromARGB(255, 104, 104, 104),
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
