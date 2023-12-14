import 'package:firstapp/Input.dart';
import 'package:firstapp/bottom_sheet.dart';
import 'package:firstapp/drawer_home.dart';
import 'package:firstapp/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/ImagePicker.dart';

class NewTabBar extends StatefulWidget {
  const NewTabBar({super.key});

  @override
  State<NewTabBar> createState() => _NewTabBarState();
}

class _NewTabBarState extends State<NewTabBar> {
  int currentIndex = 0;
  List Screens = [
    const Input(),
    const ChooseImage(),
    const DrawerHome(),
    const CustomBottomSheet()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Bottom Tab Bar"),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        drawer: const MainDrawer(),
        body: Screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            backgroundColor: Colors.black,
            fixedColor: const Color.fromARGB(255, 255, 255, 255),
            onTap: (index) => setState(() {
                  currentIndex = index;
                }),
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  label: "Home",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.image),
                  label: "Image",
                  backgroundColor: Colors.red),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.move_to_inbox),
                  label: "Counter",
                  backgroundColor: Colors.green),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.shield),
                  label: "Bottom Sheet",
                  backgroundColor: Colors.purple),
            ]),
      ),
    );
  }
}
