import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: 50,
          height: 40,
          child: TextFormField(
              onChanged: (value) {
                if (value.length == 2) {
                  FocusScope.of(context).nextFocus();
                }
              },
              inputFormatters: [LengthLimitingTextInputFormatter(2)],
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text("DD"),
                floatingLabelBehavior: FloatingLabelBehavior.never,
              )),
        ),
        const Text(
          "/",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        SizedBox(
          width: 50,
          height: 40,
          child: TextFormField(
              onChanged: (value) {
                if (value.length == 2) {
                  FocusScope.of(context).nextFocus();
                }
              },
              inputFormatters: [LengthLimitingTextInputFormatter(2)],
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  label: Text("MM"),
                  floatingLabelBehavior: FloatingLabelBehavior.never)),
        ),
        const Text(
          "/",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        SizedBox(
          width: 65,
          height: 40,
          child: TextFormField(
              onChanged: (value) {
                if (value.length == 4) {
                  FocusScope.of(context).nextFocus();
                }
              },
              inputFormatters: [LengthLimitingTextInputFormatter(4)],
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  label: Text("YYYY"),
                  floatingLabelBehavior: FloatingLabelBehavior.never)),
        ),
      ],
    );
  }
}
