import 'package:flutter/material.dart';
import 'package:tinderclone/Components/auth_button.dart';
import 'package:tinderclone/Components/auth_screens_title.dart';
import 'package:tinderclone/Components/image_select.dart';

class AddPhotos extends StatefulWidget {
  const AddPhotos({super.key});

  @override
  State<AddPhotos> createState() => _AddPhotosState();
}

class _AddPhotosState extends State<AddPhotos> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ScreenTitle(title: "Add Photos"),
                  const Text(
                    'Add at least 2 photos to continue',
                    style: TextStyle(
                        color: Color.fromARGB(255, 148, 148, 148),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Wrap(children: const [
                    ImageCardSelect(),
                    ImageCardSelect(),
                    ImageCardSelect(),
                    ImageCardSelect(),
                    ImageCardSelect(),
                    ImageCardSelect(),
                  ]),
                  AuthButton(
                      title: "CONTINUE",
                      onpress: () {
                        Navigator.pushNamed(context, '/intrest');
                      })
                ]),
          ),
        ),
      ),
    );
  }
}
