import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String intro;
  //get function
  final Function deleteData;

  const InfoCard({required this.intro, required this.deleteData, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(50),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Container(
                child: Column(
              children: [
                Text(
                  intro,
                ),
                TextButton(
                    onPressed: () {
                      deleteData();
                    },
                    child: const Icon(Icons.delete))
              ],
            )),
          ),
        ],
      ),
    );
  }
}
