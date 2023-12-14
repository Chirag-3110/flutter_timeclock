import 'package:firstapp/StateManagment/input_value_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final _textController = TextEditingController();
  String text = '';
  @override
  Widget build(BuildContext context) {
    InputValue provider = Provider.of<InputValue>(context);
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                child: Center(
                    child: Text(
                  text,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                )),
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: "White Something...",
                      suffixIcon: IconButton(
                          onPressed: () {
                            _textController.clear();
                          },
                          icon: const Icon(Icons.clear))),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        text = _textController.text;
                      });
                      provider.setName(_textController.text);
                    },
                    height: 35,
                    color: const Color.fromARGB(255, 54, 136, 244),
                    child: const Text(
                      "Post",
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          ),
        ));
  }
}
