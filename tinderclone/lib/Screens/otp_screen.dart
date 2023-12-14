import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tinderclone/Components/auth_button.dart';
import 'package:tinderclone/Components/auth_screens_title.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 217, 217, 217)),
      backgroundColor: Colors.white,
      body: Container(
        // alignment: Alignment.center,
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            const ScreenTitle(title: "My code is"),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  '917073787709',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 117, 117, 117)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2, color: Color.fromARGB(255, 165, 165, 165)),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                      child: TextButton(
                    onPressed: () {
                      print('hello');
                    },
                    child: const Text("RESEND",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 117, 117, 117))),
                  )),
                )
              ],
            ),
            Form(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 64,
                  height: 68,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorHeight: 25,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    decoration: const InputDecoration(
                        filled: true, fillColor: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 64,
                  height: 68,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorHeight: 25,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    decoration: const InputDecoration(
                        filled: true, fillColor: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 64,
                  height: 68,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorHeight: 25,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    decoration: const InputDecoration(
                        filled: true, fillColor: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 64,
                  height: 68,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    cursorHeight: 25,
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    decoration: const InputDecoration(
                        filled: true, fillColor: Colors.white),
                  ),
                ),
              ],
            )),
            const SizedBox(
              height: 50,
            ),
            AuthButton(
                title: 'CONTINUE',
                onpress: () {
                  Navigator.pushNamed(context, '/email');
                }),
          ],
        ),
      ),
    );
  }
}
