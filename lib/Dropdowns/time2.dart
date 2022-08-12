import 'package:flutter/material.dart';

class Time2 extends StatefulWidget {
  const Time2({Key? key}) : super(key: key);

  @override
  _Time2State createState() => _Time2State();
}

class _Time2State extends State<Time2> {
  String dropdownvalue6 = '5:00 PM';
  bool tap3 = false;
  bool tap5 = false;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      underline: Container(
        height: 1.5,
        color: Colors.black26,
      ),
      value: dropdownvalue6,
      style: TextStyle(
        color: tap5 == true ? Colors.black : Colors.black12,
        fontSize: 20,
        fontFamily: 'Poppins',
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue6 = newValue!;
          tap3 = true;
        });
      },
      items: <String>[
        '5:00 PM',
        '5:15 PM',
        '5:30 PM',
        '5:45 PM',
        '6:00 PM',
        '6:15 PM',
        '6:30 PM'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
