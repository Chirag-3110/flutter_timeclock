import 'package:flutter/material.dart';
import 'package:tinderclone/Components/auth_button.dart';
import 'package:tinderclone/Components/auth_screens_title.dart';
import 'package:tinderclone/Components/home_button.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(children: [
              const ScreenTitle(title: "What's your email?"),
              const SizedBox(height: 20),
              const Text(
                "Don't lose access to your account, verify your email.",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 171, 170, 170)),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  cursorHeight: 25,
                  decoration: InputDecoration(
                      label: Text("Enter email"),
                      floatingLabelBehavior: FloatingLabelBehavior.never),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AuthButton(
                  title: "CONTINUE",
                  onpress: () {
                    Navigator.pushNamed(context, '/welcome');
                  }),
              const Text(
                "OR",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 171, 170, 170)),
              ),
              CustomHomeButton(
                  buttonTitle: "SIGN IN WITH GOOGLE",
                  buttonIcon: const Icon(
                    Icons.g_mobiledata,
                    size: 30,
                  ),
                  handleButton: () {
                    print("Google");
                  }),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Verify instantly by connecting your Google account",
                textAlign: TextAlign.center,
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 171, 170, 170)),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
