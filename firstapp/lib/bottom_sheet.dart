import 'package:firstapp/CustomButton.dart';
import 'package:flutter/material.dart';

import 'CustomWidget/custom_modal_sheet.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Wrap(
          direction: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                height: 100,
                width: 100,
                child: const Center(child: Text("1")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                height: 100,
                width: 100,
                child: const Center(child: Text("1")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                height: 100,
                width: 100,
                child: const Center(child: Text("1")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                height: 100,
                width: 100,
                child: const Center(child: Text("1")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                height: 100,
                width: 100,
                child: const Center(child: Text("1")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                height: 100,
                width: 100,
                child: const Center(child: Text("1")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                height: 100,
                width: 100,
                child: const Center(child: Text("1")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                height: 100,
                width: 100,
                child: const Center(child: Text("1")),
              ),
            ),
            CustomButton(
                textTitle: "Open Modal",
                onpress: () {
                  _handleModal(context);
                },
                buttonIcon: const Icon(
                  Icons.file_open,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }

// modal properties in flutter
  Future<dynamic> _handleModal(BuildContext context) {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        isScrollControlled: true, //set bottom sheet to ful height
        isDismissible: false, //responsible for close sheet if click outside
        enableDrag: true, //responseible for dragging,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => const CustomModalSheet());
  }
}
