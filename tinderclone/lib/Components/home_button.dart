import 'package:flutter/material.dart';

class CustomHomeButton extends StatelessWidget {
  final String buttonTitle;
  final Function handleButton;
  final Widget buttonIcon;

  const CustomHomeButton(
      {required this.buttonTitle,
      required this.buttonIcon,
      required this.handleButton,
      super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return TextButton(
      onPressed: () => handleButton(),
      child: Container(
        width: 2 * (mediaQuery.size.width / 2.3),
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.white),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          buttonIcon,
          Text(
            buttonTitle,
            style: const TextStyle(
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 21, 21, 21)),
          )
        ]),
      ),
    );
  }
}
