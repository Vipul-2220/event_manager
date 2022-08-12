import 'package:flutter/material.dart';

class Time1 extends StatefulWidget {
  const Time1({Key? key}) : super(key: key);

  @override
  _Time1State createState() => _Time1State();
}

class _Time1State extends State<Time1> {
  String dropdownvalue5 = '9:00 AM';
  bool tap5 = false;
  bool tap3 = false;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      underline: Container(
        height: 1.5,
        color: Colors.black26,
      ),
      value: dropdownvalue5,
      style: TextStyle(
        color: tap5 == true ? Colors.black : Colors.black12,
        fontSize: 20,
        fontFamily: 'Poppins',
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue5 = newValue!;
          tap3 = true;
        });
      },
      items: <String>[
        '9:00 AM',
        '9:15 AM',
        '9:30 AM',
        '9:45 AM',
        '10:00 AM',
        '10:15 AM',
        '10:30 AM'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
