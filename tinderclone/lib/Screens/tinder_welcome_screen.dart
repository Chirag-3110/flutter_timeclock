import 'package:flutter/material.dart';
import 'package:tinderclone/Components/welcome_details.dart';

class WecomeScreen extends StatelessWidget {
  const WecomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: double.infinity,
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.close,
                  size: 40,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: const [
                  Text(
                    "Welcome to Tinder",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 107, 107, 107)),
                  ),
                  Text(
                    "Please follow there House Rules",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 107, 107, 107)),
                  )
                ]),
              ),
            ),
            const SizedBox(height: 50),
            const WelcomeDetails(
              title: 'Be yourself',
              subTitle:
                  'Make sure your photos, age, and bio are true to who you are',
            ),
            const WelcomeDetails(
              title: 'Stay safe',
              subTitle:
                  "Don't be too quick to give out personal information.Data Safety",
            ),
            const WelcomeDetails(
              title: 'Play it cool',
              subTitle:
                  'Respect others and treat them as you would like to be treated',
            ),
            const WelcomeDetails(
              title: 'Be proactive',
              subTitle: 'Always report bad behavior',
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(207, 245, 43, 28),
                    ),
                    width: dimensions.size.width - 50,
                    height: 50,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/myname');
                      },
                      child: const Text(
                        'I AGREE',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
