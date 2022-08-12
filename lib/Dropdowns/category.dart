import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  String dropdownvalue4 = 'Social';
  bool tap3 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      child: DropdownButton<String>(
        underline: Container(
          height: 1.5,
          color: Colors.black26,
        ),
        value: dropdownvalue4,
        icon: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black45,
          ),
        ),
        style: TextStyle(
          color: tap3 == true ? Colors.black : Colors.black12,
          fontSize: 20,
          fontFamily: 'Poppins',
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue4 = newValue!;
            tap3 = true;
          });
        },
        items: <String>[
          'Social',
          'Sports',
          'Education',
          'Culture',
          'Career',
          'Entertainment',
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
