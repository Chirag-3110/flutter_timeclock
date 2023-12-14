import 'package:flutter/material.dart';
import 'package:tinderclone/Components/auth_button.dart';
import 'package:tinderclone/Components/auth_screens_title.dart';

class MyName extends StatefulWidget {
  const MyName({super.key});

  @override
  State<MyName> createState() => _MyNameState();
}

class _MyNameState extends State<MyName> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: double.infinity,
          padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ScreenTitle(title: "My first name is"),
                Container(
                    child: Column(
                  children: [
                    TextFormField(
                      cursorHeight: 25,
                      decoration: const InputDecoration(
                          label: Text("First Name"),
                          floatingLabelBehavior: FloatingLabelBehavior.never),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "This is how it will appear in Tinder, andyout will not be abe to change it",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color.fromARGB(255, 117, 117, 117)),
                    )
                  ],
                )),
                AuthButton(
                    title: "CONTINUE",
                    onpress: () {
                      Navigator.pushNamed(context, '/mybirtd');
                    })
              ]),
        ),
      ),
    );
  }
}
