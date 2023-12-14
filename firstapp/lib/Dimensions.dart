import 'package:flutter/material.dart';

class Dimensions extends StatefulWidget {
  const Dimensions({super.key});

  @override
  State<Dimensions> createState() => _DimensionsState();
}

class _DimensionsState extends State<Dimensions> {
  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dimesions Demo"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
          child: Container(
        width: dimensions.size.width / 2,
        height: dimensions.size.height / 3,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.red,
        ),
        child: const Text(
          "Hello",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}
