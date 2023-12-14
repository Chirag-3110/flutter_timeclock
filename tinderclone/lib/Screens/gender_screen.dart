import 'package:flutter/material.dart';
import 'package:tinderclone/Components/auth_button.dart';
import 'package:tinderclone/Components/auth_screens_title.dart';
import 'package:tinderclone/Components/gender_button.dart';
import 'package:tinderclone/main.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ScreenTitle(title: "I am a"),
                Container(
                  child: Column(children: [
                    GenderButon(title: "WOMEN", buttontype: 'women'),
                    const SizedBox(
                      height: 20,
                    ),
                    GenderButon(title: "MAN", buttontype: 'men'),
                    const SizedBox(
                      height: 20,
                    ),
                    GenderButon(title: "MORE", buttontype: 'other'),
                  ]),
                ),
                AuthButton(
                    title: "CONTINUE",
                    onpress: () {
                      Navigator.pushNamed(context, '/sexualOrientation');
                    })
              ]),
        ),
      ),
    );
  }
}
