import 'package:flutter/material.dart';
import 'Intro.dart';
import 'InfoCard.dart';

//app starting point
void main() {
  runApp(const NewApp());
}

//main class
class NewApp extends StatefulWidget {
  const NewApp({super.key});

  @override
  State<NewApp> createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  List<String> items = ["Chirag", "Tak", "Hello"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: const Text("Welcome To My App"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Column(
              children: items
                  .map((e) => InfoCard(
                      intro: e,
                      //pass function as an argument
                      deleteData: () {
                        setState(() {
                          items.remove(e);
                        });
                      }))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

//card component
class IntroCard extends StatelessWidget {
  final Intro intro;
  const IntroCard({required this.intro, super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                intro.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Text(
                  intro.title,
                  style: const TextStyle(
                      color: Colors.red, fontWeight: FontWeight.w700),
                ),
              ),
              TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    print(intro.name);
                  },
                  child: const Text(
                    "kl",
                    style: TextStyle(wordSpacing: 2),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
