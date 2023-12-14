import 'package:flutter/material.dart';
import 'package:tinderclone/Screens/HomeScreens/home_screen.dart';
import 'package:tinderclone/Screens/add-photos_screen.dart';
import 'package:tinderclone/Screens/birthdate_screen.dart';
import 'package:tinderclone/Screens/choos_sex_type.dart';
import 'package:tinderclone/Screens/email_screen.dart';
import 'package:tinderclone/Screens/gender_screen.dart';
import 'package:tinderclone/Screens/home_screen.dart';
import 'package:tinderclone/Screens/interest_screen.dart';
import 'package:tinderclone/Screens/name_screen.dart';
import 'package:tinderclone/Screens/otp_screen.dart';
import 'package:tinderclone/Screens/phone_screen.dart';
import 'package:tinderclone/Screens/tinder_welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tinder Clone",
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/phone': (context) => const PhoneScreen(),
        '/email': (context) => const EmailScreen(),
        '/otp': (context) => const OTPScreen(),
        '/welcome': (context) => const WecomeScreen(),
        '/myname': (context) => const MyName(),
        '/mybirtd': (context) => const MyBirthDate(),
        '/genderSelect': (context) => const GenderScreen(),
        '/sexualOrientation': (context) => const ChooseSex(),
        '/addPhotos': (context) => const AddPhotos(),
        '/intrest': (context) => const IntrestScreen(),
        '/apphome': (context) => const HomeMain()
      },
    );
  }
}
