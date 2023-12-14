import 'package:flutter/material.dart';

class GenderButon extends StatelessWidget {
  final String title;
  final String buttontype;

  const GenderButon({required this.title, required this.buttontype, super.key});

  @override
  Widget build(BuildContext context) {
    dynamic conditinoalWidget =
        buttontype == "other" ? const ConditionalIcon() : const Text('');

    var dimentions = MediaQuery.of(context);
    return Container(
      width: dimentions.size.width,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(
              width: 2, color: const Color.fromARGB(255, 148, 148, 148)),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50)),
      child: TextButton(
        onPressed: () {
          print(title);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 148, 148, 148)),
            ),
            conditinoalWidget
          ],
        ),
      ),
    );
  }
}

class ConditionalIcon extends StatelessWidget {
  const ConditionalIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerRight,
      child: Icon(
        Icons.arrow_right,
        size: 25,
        color: Colors.black,
      ),
    );
  }
}
