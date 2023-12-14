import 'dart:io';

import 'package:firstapp/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChooseImage extends StatefulWidget {
  const ChooseImage({super.key});

  @override
  State<ChooseImage> createState() => _ChooesImageState();
}

class _ChooesImageState extends State<ChooseImage> {
  File _image = File('');

  Future getImageFromGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    } else {
      final tempPath = File(image.path);
      setState(() {
        _image = tempPath;
      });
    }
  }

  Future getImageFromCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) {
      return;
    } else {
      final tempPath = File(image.path);
      setState(() {
        _image = tempPath;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          _image != null
              ? Container(
                  width: 300,
                  // color: Colors.red,
                  height: 300,
                  child: Image.file(
                    _image,
                    fit: BoxFit.contain,
                  ))
              : Container(
                  width: 300,
                  height: 300,
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhro39IF-fHowFjrVvRlgsSAzALV5SoRyhdw&usqp=CAU',
                  ),
                ),
          CustomButton(
            buttonIcon: const Icon(Icons.image, color: Colors.white, size: 20),
            textTitle: "Open Gallery",
            onpress: getImageFromGallery,
          ),
          // const SizedBox(height: 50),
          CustomButton(
              buttonIcon:
                  const Icon(Icons.camera, color: Colors.white, size: 20),
              textTitle: "Open Camera",
              onpress: getImageFromCamera)
        ]),
      ),
    );
  }
}
