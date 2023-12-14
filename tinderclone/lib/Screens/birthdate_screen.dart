import 'package:flutter/material.dart';
import 'package:tinderclone/Components/auth_button.dart';
import 'package:tinderclone/Components/auth_screens_title.dart';
import 'package:tinderclone/Components/date_picker.dart';

class MyBirthDate extends StatefulWidget {
  const MyBirthDate({super.key});

  @override
  State<MyBirthDate> createState() => _MyBirthDateState();
}

class _MyBirthDateState extends State<MyBirthDate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ScreenTitle(title: "My birthday is"),
                Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    DatePicker(),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Your age will be public",
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
                      Navigator.pushNamed(context, '/genderSelect');
                    })
              ]),
        ),
      ),
    );
  }
}
