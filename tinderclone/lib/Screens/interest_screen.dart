import 'package:flutter/material.dart';
import 'package:tinderclone/Components/auth_button.dart';
import 'package:tinderclone/Components/auth_screens_title.dart';

class IntrestScreen extends StatefulWidget {
  const IntrestScreen({super.key});

  @override
  State<IntrestScreen> createState() => IntrestScreenState();
}

class IntrestScreenState extends State<IntrestScreen> {
  List<Map<String, dynamic>> intrestList = [
    {'id': 1, 'name': "Travel", 'isSelect': false},
    {'id': 2, 'name': "Blackpink", 'isSelect': false},
    {'id': 3, 'name': "Vlogging", 'isSelect': false},
    {'id': 4, 'name': "Hip Hop", 'isSelect': false},
    {'id': 5, 'name': "Board Gamnes", 'isSelect': false},
  ];
  void changeSelectedIntrestColor(Map selectedValue) {
    int val = intrestList
        .indexWhere((value) => value['name'] == selectedValue['name']);
    setState(() {
      intrestList[val]['isSelect'] = !intrestList[val]['isSelect'];
    });
  }

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: const [
                  ScreenTitle(title: "Intrests"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Let everyone know what you're passoinate about, by adding it to your profile",
                    style: TextStyle(
                        color: Color.fromARGB(255, 157, 157, 157),
                        fontWeight: FontWeight.w700),
                  ),
                ]),
                const SizedBox(height: 20),
                Container(
                  width: dimensions.size.width,
                  height: dimensions.size.height - 280,
                  child: SingleChildScrollView(
                    child: Wrap(
                      children: intrestList.map((item) {
                        return FittedBox(
                          child: InkWell(
                            onTap: () {
                              changeSelectedIntrestColor(item);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 20),
                              margin: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(
                                      width: 2,
                                      color: item['isSelect']
                                          ? const Color.fromARGB(
                                              255, 251, 17, 36)
                                          : const Color.fromARGB(
                                              255, 167, 167, 167))),
                              child: Text(
                                item['name'],
                                style: TextStyle(
                                    color: item['isSelect']
                                        ? const Color.fromARGB(255, 251, 17, 36)
                                        : const Color.fromARGB(
                                            255, 167, 167, 167),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                AuthButton(
                    title: "CONTINUE",
                    onpress: () {
                      Navigator.pushNamed(context, '/apphome');
                    })
              ]),
        ),
      ),
    );
  }
}
