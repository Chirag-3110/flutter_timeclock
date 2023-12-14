import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tinderclone/Components/auth_button.dart';
import 'package:tinderclone/Components/auth_screens_title.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ScreenTitle(title: "My number is"),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 10),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(255, 94, 93, 93),
                                  width: 1))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text("IN +91",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 94, 93, 93))),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        width: dimensions.size.width / 2,
                        height: 60,
                        child: TextFormField(
                          onChanged: (value) {
                            print(value);
                          },
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(10)
                          ],
                          keyboardType: TextInputType.number,
                          cursorColor: Colors.red,
                          cursorHeight: 25,
                          enabled: true,
                          decoration: const InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              label: Text(
                                'Phone number',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              )),
                        ))
                  ],
                ),
                const SizedBox(height: 50),
                const Text(
                  'When you tap "Continue", Tinder will send a text with verification code. Message and dara rates may apply. The verified phone number can be user to log in. Learin what happens when your number changes.',
                  style: TextStyle(color: Color.fromARGB(255, 94, 93, 93)),
                ),
                AuthButton(
                    title: "CONTINUE",
                    onpress: () {
                      Navigator.pushNamed(context, '/otp');
                    })
              ]),
        ),
      ),
    );
  }
}
