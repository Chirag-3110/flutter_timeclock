import 'package:flutter/material.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int currentIndex = 0;
  List Screens = [
    const Text('data'),
    const Text('data'),
    const Text('data'),
    const Text('data'),
    const Text('data'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome to tinder")),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          backgroundColor: Colors.black,
          fixedColor: const Color.fromARGB(255, 255, 255, 255),
          onTap: (index) => setState(() {
                currentIndex = index;
              }),
          showSelectedLabels: false,
          type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.image),
                label: "Image",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.move_to_inbox),
                label: "Counter",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.shield),
                label: "Bottom Sheet",
                backgroundColor: Colors.purple),
            BottomNavigationBarItem(
                icon: Icon(Icons.safety_check),
                label: "Profile",
                backgroundColor: Color.fromARGB(255, 39, 144, 176)),
          ]),
    );
  }
}
