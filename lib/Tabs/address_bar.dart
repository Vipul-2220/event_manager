import 'package:event_manager/Screens/second_screen.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddressBar extends StatefulWidget {
  const AddressBar({Key? key}) : super(key: key);

  @override
  State<AddressBar> createState() => _AddressBarState();
}

class _AddressBarState extends State<AddressBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Area',
              style: TextStyle(
                color: Color(0xff666666),
                fontWeight: FontWeight.w600,
                fontSize: 18,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              cursorHeight: 25.0,
              decoration: InputDecoration(
                focusColor: Color(0xff7F71D9),
                hintText: 'Lilabagh',
                hintStyle: TextStyle(
                  color: Colors.black26,
                  fontFamily: 'Poppins',
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff7F71D9),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 00.0),
                      child: Text(
                        'Door no.',
                        style: TextStyle(
                          color: Color(0xff666666),
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: TextField(
                        cursorHeight: 25.0,
                        decoration: InputDecoration(
                          focusColor: Color(0xff7F71D9),
                          hintText: '57/8',
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontFamily: 'Poppins',
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff7F71D9),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Street',
                      style: TextStyle(
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: TextField(
                        cursorHeight: 25.0,
                        decoration: InputDecoration(
                          focusColor: Color(0xff7F71D9),
                          hintText: '87 Sean Manors',
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontFamily: 'Poppins',
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff7F71D9),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'City',
                      style: TextStyle(
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: TextField(
                        cursorHeight: 25.0,
                        decoration: InputDecoration(
                          focusColor: Color(0xff7F71D9),
                          hintText: 'Mumbai',
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontFamily: 'Poppins',
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff7F71D9),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pin',
                      style: TextStyle(
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: TextField(
                        cursorHeight: 25.0,
                        decoration: InputDecoration(
                          focusColor: Color(0xff7F71D9),
                          hintText: '422056',
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontFamily: 'Poppins',
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff7F71D9),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Name of address',
              style: TextStyle(
                color: Color(0xff666666),
                fontWeight: FontWeight.w600,
                fontSize: 18,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              cursorHeight: 25.0,
              decoration: InputDecoration(
                focusColor: Color(0xff7F71D9),
                hintText: 'Office',
                hintStyle: TextStyle(
                  color: Colors.black26,
                  fontFamily: 'Poppins',
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff7F71D9),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 266,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xffF0F0F0),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SvgPicture.asset(
                          'icons/Upload.svg',
                          height: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0.0),
                        child: Text(
                          'Upload photos of location',
                          style: TextStyle(
                            color: Color(0xff666666),
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 95,
                color: Colors.white,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff7F71D9)),
                  ),
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed(SecondScreen.id);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
