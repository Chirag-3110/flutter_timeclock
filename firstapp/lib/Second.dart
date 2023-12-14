import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int data = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 252, 252, 252),
        appBar: AppBar(
          title: const Text("State Full widget"),
          centerTitle: true,
        ),
        body: Center(
            child: Text(
          '$data',
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 50),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              data++;
            });
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
