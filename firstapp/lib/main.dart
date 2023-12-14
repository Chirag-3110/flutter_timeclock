import 'package:firstapp/NewTabBar.dart';
import 'package:firstapp/StateManagment/input_value_provider.dart';
import 'package:firstapp/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
//set provider
  runApp(ChangeNotifierProvider(
    create: (_) => InputValue(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Practise App",
      initialRoute: '/',
      routes: {
        '/': (context) => const NewTabBar(),
        '/profile': (context) => const Profile()
      },
    );
  }
}
