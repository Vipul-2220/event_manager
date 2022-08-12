import 'package:flutter/material.dart';

class Repeat extends StatefulWidget {
  const Repeat({Key? key}) : super(key: key);

  @override
  _RepeatState createState() => _RepeatState();
}

class _RepeatState extends State<Repeat> {
  String dropdownvalue3 = 'Doesn\'t repeat';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.black12,
      ),
      child: DropdownButton<String>(
        elevation: 0,
        value: dropdownvalue3,
        icon: const Icon(
          Icons.keyboard_arrow_down,
          color: Colors.black87,
        ),
        style: const TextStyle(
          color: Color(0xff666666),
          fontSize: 18,
          fontFamily: 'Poppins',
        ),
        underline: null,
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue3 = newValue!;
          });
        },
        items: <String>[
          'Doesn\'t repeat',
          'Daily',
          'Weekly on a day',
          'Monthly on a day',
          'Annually on Jun 7',
          'Every weekday',
          'Custom'
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
