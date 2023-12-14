import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String textTitle;
  final Widget buttonIcon;
//call functino like this
  final void Function() onpress;

  const CustomButton(
      {required this.textTitle,
      required this.onpress,
      required this.buttonIcon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onpress,
        child: Container(
          width: 150,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.blueAccent, borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonIcon,
              Text(
                textTitle,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
