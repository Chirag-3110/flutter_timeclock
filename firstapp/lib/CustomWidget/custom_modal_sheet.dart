import 'package:firstapp/CustomButton.dart';
import 'package:flutter/material.dart';

class CustomModalSheet extends StatefulWidget {
  const CustomModalSheet({super.key});

  @override
  State<CustomModalSheet> createState() => _CustomModalSheetState();
}

class _CustomModalSheetState extends State<CustomModalSheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      builder: (context, scrollController) => Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: ListView(
          controller: scrollController,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
                child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at leo sed risus viverra mollis. Praesent finibus a sapien vel eleifend. Vestibulum vel porttitor purus. Fusce auctor, sapien vel lacinia imperdiet, erat orci gravida ex, sit amet facilisis ante purus id odio. Donec sed magna leo. Proin sed sollicitudin sapien. Vivamus aliquam scelerisque magna at accumsan. Phasellus vulputate augue quam, ut volutpat enim sodales a. Ut blandit et sapien et dictum. In hac habitasse platea dictumst. Fusce ultricies enim et est lacinia, id porttitor ante eleifend. Vivamus sed libero ex. Cras nec est at purus cursus egestas. Nunc suscipit ultrices magna eu lobortis. Sed suscipit accumsan metus, sit amet tempus ligula efficitur sollicitudin."),
            )),
            Container(
                child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at leo sed risus viverra mollis. Praesent finibus a sapien vel eleifend. Vestibulum vel porttitor purus. Fusce auctor, sapien vel lacinia imperdiet, erat orci gravida ex, sit amet facilisis ante purus id odio. Donec sed magna leo. Proin sed sollicitudin sapien. Vivamus aliquam scelerisque magna at accumsan. Phasellus vulputate augue quam, ut volutpat enim sodales a. Ut blandit et sapien et dictum. In hac habitasse platea dictumst. Fusce ultricies enim et est lacinia, id porttitor ante eleifend. Vivamus sed libero ex. Cras nec est at purus cursus egestas. Nunc suscipit ultrices magna eu lobortis. Sed suscipit accumsan metus, sit amet tempus ligula efficitur sollicitudin."),
            )),
            Container(
                child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at leo sed risus viverra mollis. Praesent finibus a sapien vel eleifend. Vestibulum vel porttitor purus. Fusce auctor, sapien vel lacinia imperdiet, erat orci gravida ex, sit amet facilisis ante purus id odio. Donec sed magna leo. Proin sed sollicitudin sapien. Vivamus aliquam scelerisque magna at accumsan. Phasellus vulputate augue quam, ut volutpat enim sodales a. Ut blandit et sapien et dictum. In hac habitasse platea dictumst. Fusce ultricies enim et est lacinia, id porttitor ante eleifend. Vivamus sed libero ex. Cras nec est at purus cursus egestas. Nunc suscipit ultrices magna eu lobortis. Sed suscipit accumsan metus, sit amet tempus ligula efficitur sollicitudin."),
            )),
            Container(
                child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at leo sed risus viverra mollis. Praesent finibus a sapien vel eleifend. Vestibulum vel porttitor purus. Fusce auctor, sapien vel lacinia imperdiet, erat orci gravida ex, sit amet facilisis ante purus id odio. Donec sed magna leo. Proin sed sollicitudin sapien. Vivamus aliquam scelerisque magna at accumsan. Phasellus vulputate augue quam, ut volutpat enim sodales a. Ut blandit et sapien et dictum. In hac habitasse platea dictumst. Fusce ultricies enim et est lacinia, id porttitor ante eleifend. Vivamus sed libero ex. Cras nec est at purus cursus egestas. Nunc suscipit ultrices magna eu lobortis. Sed suscipit accumsan metus, sit amet tempus ligula efficitur sollicitudin."),
            )),
            Container(
                child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at leo sed risus viverra mollis. Praesent finibus a sapien vel eleifend. Vestibulum vel porttitor purus. Fusce auctor, sapien vel lacinia imperdiet, erat orci gravida ex, sit amet facilisis ante purus id odio. Donec sed magna leo. Proin sed sollicitudin sapien. Vivamus aliquam scelerisque magna at accumsan. Phasellus vulputate augue quam, ut volutpat enim sodales a. Ut blandit et sapien et dictum. In hac habitasse platea dictumst. Fusce ultricies enim et est lacinia, id porttitor ante eleifend. Vivamus sed libero ex. Cras nec est at purus cursus egestas. Nunc suscipit ultrices magna eu lobortis. Sed suscipit accumsan metus, sit amet tempus ligula efficitur sollicitudin."),
            )),
            CustomButton(
                textTitle: "Close Modal",
                onpress: () {
                  Navigator.of(context).pop();
                },
                buttonIcon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
