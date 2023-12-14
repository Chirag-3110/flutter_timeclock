import 'package:flutter/material.dart';

class ImageCardSelect extends StatelessWidget {
  const ImageCardSelect({super.key});

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.of(context);
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: dimensions.size.width / 3,
          height: dimensions.size.width / 2.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 232, 232, 232)),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: InkWell(
            onTap: () {
              print("Hello");
            },
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 244, 54, 73),
                  borderRadius: BorderRadius.circular(50)),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
