import 'package:flutter/material.dart';
import 'package:firstapp/StateManagment/input_value_provider.dart';
import 'package:provider/provider.dart';

class DrawerHome extends StatefulWidget {
  const DrawerHome({super.key});

  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  int data = 1;
  @override
  Widget build(BuildContext context) {
    InputValue provider = Provider.of<InputValue>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 252, 252),
      body: Center(
          child: Text(
        provider.getName,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 50),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            data++;
          });
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
