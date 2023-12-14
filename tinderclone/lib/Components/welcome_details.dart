import 'package:flutter/material.dart';

class WelcomeDetails extends StatelessWidget {
  final String title;
  final String subTitle;
  const WelcomeDetails(
      {required this.title, required this.subTitle, super.key});

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.of(context);
    return Container(
      width: dimensions.size.width - 50,
      // height: 50,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.check,
                size: 25,
                color: Colors.red,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 107, 107, 107)),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            subTitle,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 158, 158, 158)),
          )
        ]),
      ),
    );
  }
}
