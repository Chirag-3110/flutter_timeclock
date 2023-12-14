import 'package:flutter/material.dart';

class CustomsexList extends StatelessWidget {
  final List<Map<String, dynamic>> sexList;
  final Function getSelecteditem;
  const CustomsexList(
      {required this.sexList, required this.getSelecteditem, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: sexList.map((sextype) {
            return InkWell(
              onTap: () {
                getSelecteditem(sextype);
              },
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 192, 192, 192)))),
                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      sextype['name'],
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: sextype['isSelected']
                              ? const Color.fromARGB(255, 255, 1, 1)
                              : const Color.fromARGB(255, 145, 145, 145)),
                    ),
                    sextype['isSelected']
                        ? const Icon(Icons.check,
                            size: 20, color: Color.fromARGB(255, 255, 0, 0))
                        : const Text('')
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
