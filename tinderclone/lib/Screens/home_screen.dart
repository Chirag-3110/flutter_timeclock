import 'package:flutter/material.dart';
import 'package:tinderclone/Components/home_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromARGB(255, 255, 107, 107),
                  Color.fromARGB(255, 243, 96, 106),
                  Color.fromARGB(255, 242, 54, 117),
                  Color.fromARGB(255, 242, 48, 139),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "By Clicking 'Log in', you agree with our Terms. Learn how we process your data in our Privacy Policy and cokkies policy",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  CustomHomeButton(
                      buttonTitle: "Log In With Google",
                      buttonIcon: const Icon(
                        Icons.g_mobiledata,
                        size: 30,
                      ),
                      handleButton: () {
                        print('Hello Jarvis');
                      }),
                  CustomHomeButton(
                      buttonTitle: "Log In With FaceBook",
                      buttonIcon: const Icon(
                        Icons.facebook,
                        size: 30,
                      ),
                      handleButton: () {
                        print("FaceBook Call");
                      }),
                  CustomHomeButton(
                      buttonTitle: "Log In With Phone Number",
                      buttonIcon: const Icon(
                        Icons.message,
                        size: 30,
                      ),
                      handleButton: () {
                        Navigator.pushNamed(context, '/phone');
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Trouble Logging In",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15,
                        letterSpacing: 1),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
