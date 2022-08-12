import 'package:flutter/material.dart';

class TimePeriodNumber extends StatefulWidget {
  const TimePeriodNumber({Key? key}) : super(key: key);

  @override
  _TimePeriodNumberState createState() => _TimePeriodNumberState();
}

class _TimePeriodNumberState extends State<TimePeriodNumber> {
  String dropdownvalue = '1';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xffF0F0F0),
      ),
      child: DropdownButton<String>(
        elevation: 0,
        value: dropdownvalue,
        icon: const Icon(
          Icons.keyboard_arrow_down,
          color: Colors.black87,
        ),
        style: const TextStyle(
          color: Color(0xff666666),
          fontSize: 18,
          fontFamily: 'Poppins',
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
          });
        },
        items: <String>[
          '1',
          '2',
          '3',
          '4',
          '5',
          '6',
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
