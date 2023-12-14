import 'package:flutter/material.dart';
import 'package:tinderclone/Components/auth_screens_title.dart';
import 'package:tinderclone/Components/home_button.dart';
import 'package:tinderclone/Components/sex_choose_list.dart';

class ChooseSex extends StatefulWidget {
  const ChooseSex({super.key});

  @override
  State<ChooseSex> createState() => _ChooseSexState();
}

class _ChooseSexState extends State<ChooseSex> {
  bool isChecked = false;
  List<Map<String, dynamic>> sexList = [
    {'id': 1, 'name': "Straight", 'isSelected': false},
    {'id': 2, 'name': "Gay", 'isSelected': false},
    {'id': 3, 'name': "Lesbian", 'isSelected': false},
    {'id': 4, 'name': "Bisexual", 'isSelected': false},
    {'id': 5, 'name': "Asexual", 'isSelected': false},
    {'id': 6, 'name': "Demisexual", 'isSelected': false},
    {'id': 7, 'name': "Pansexual", 'isSelected': false},
    {'id': 8, 'name': "Queer", 'isSelected': false},
  ];

  int selectedCount = 0;
  void getItem(Map selectedListItem) {
    if (selectedCount != 3) {
      int selectedIndex = sexList
          .indexWhere((element) => element['name'] == selectedListItem['name']);
      setState(() {
        sexList[selectedIndex]['isSelected'] =
            !sexList[selectedIndex]['isSelected'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ScreenTitle(title: "My sexual orientation is"),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Select up to 3',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 104, 104, 104),
                        fontWeight: FontWeight.w600),
                  ),
                  CustomsexList(sexList: sexList, getSelecteditem: getItem),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: const Color.fromARGB(255, 255, 255, 255),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      const Text(
                        "Show my orientation on my profile",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 104, 104, 104),
                        ),
                      )
                    ],
                  ),
                  Align(
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
                            Navigator.pushNamed(context, '/addPhotos');
                          },
                          child: const Text(
                            'CONTINUE',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
