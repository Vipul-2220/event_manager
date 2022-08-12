import 'package:event_manager/Screens/second_screen.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class OnLineBar extends StatefulWidget {
  const OnLineBar({Key? key}) : super(key: key);

  @override
  State<OnLineBar> createState() => _OnLineBarState();
}

class _OnLineBarState extends State<OnLineBar> {
  var group = 1;
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
              'Attach a link',
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
                suffixIcon: CircleAvatar(
                  backgroundColor: Color(0xffF0F0F0),
                  child: Icon(
                    Icons.attach_file,
                    color: Color(0xff666666),
                  ),
                ),
                suffixIconConstraints: BoxConstraints(
                  maxHeight: 30,
                ),
                focusColor: Color(0xff7F71D9),
                hintText: 'Enter a URL',
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Link Expiration',
                  style: TextStyle(
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: group,
                    onChanged: (value) {
                      setState(() {
                        group = 1;
                      });
                    },
                    activeColor: Color(0xff7F71D9),
                    hoverColor: Color(0xff7F71D9),
                    fillColor: MaterialStateProperty.all(Color(0xff7F71D9)),
                  ),
                  Text(
                    'Never',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: group,
                    onChanged: (T) {
                      setState(() {
                        group = 2;
                      });
                    },
                    activeColor: Color(0xff7F71D9),
                    hoverColor: Color(0xff7F71D9),
                    fillColor: MaterialStateProperty.all(Color(0xff7F71D9)),
                  ),
                  Text(
                    'Expire in 30 days',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: group,
                    onChanged: (T) {
                      setState(() {
                        group = 3;
                      });
                    },
                    activeColor: Color(0xff7F71D9),
                    hoverColor: Color(0xff7F71D9),
                    fillColor: MaterialStateProperty.all(Color(0xff7F71D9)),
                  ),
                  Text(
                    'Expire in 60 days',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 4,
                    groupValue: group,
                    onChanged: (T) {
                      setState(() {
                        group = 4;
                      });
                    },
                    activeColor: Color(0xff7F71D9),
                    hoverColor: Color(0xff7F71D9),
                    fillColor: MaterialStateProperty.all(Color(0xff7F71D9)),
                  ),
                  Text(
                    'Expire in 90 days',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 250.0, top: 20),
            child: Container(
              width: 95,
              color: Colors.white,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff7F71D9)),
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
        ],
      ),
    );
  }
}
