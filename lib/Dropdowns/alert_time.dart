import 'package:flutter/material.dart';

class AlertTime extends StatefulWidget {
  const AlertTime({Key? key}) : super(key: key);

  @override
  _AlertTimeState createState() => _AlertTimeState();
}

class _AlertTimeState extends State<AlertTime> {
  String dropdownvalue = 'minutes';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xffF0F0F0),
      ),
      child: DropdownButton<String>(
        elevation: 0,
        value: dropdownvalue,
        icon: const Icon(
          Icons.keyboard_arrow_down,
          color: Color(0xff666666),
        ),
        style: const TextStyle(
          color: Color(0xff666666),
          fontSize: 18,
          fontFamily: 'Poppins',
        ),
        underline: null,
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
          });
        },
        items: <String>[
          'minutes',
          'hours',
          'days',
          'weeks',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
