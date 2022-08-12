import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CouponCode extends StatefulWidget {
  const CouponCode({Key? key}) : super(key: key);

  @override
  State<CouponCode> createState() => _CouponCodeState();
}

class _CouponCodeState extends State<CouponCode> {
  int group = 1;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 160,
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add coupon code',
              style: TextStyle(
                color: Color(0xff666666),
                fontWeight: FontWeight.w600,
                fontSize: 20,
                fontFamily: 'Poppins',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                    'Enter coupon code',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 14.5,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.4),
                    child: Container(
                      width: 93,
                      child: TextField(
                        cursorHeight: 20.0,
                        decoration: InputDecoration(
                          suffixIconConstraints: BoxConstraints(
                            maxHeight: 20,
                          ),
                          focusColor: Color(0xff7F71D9),
                          hintText: 'KN1465MIT',
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 14,
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
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: group,
                    onChanged: (value) {
                      setState(() {
                        group = 2;
                      });
                    },
                    activeColor: Color(0xff7F71D9),
                    hoverColor: Color(0xff7F71D9),
                    fillColor: MaterialStateProperty.all(Color(0xff7F71D9)),
                  ),
                  Text(
                    'Generate a code',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      width: 93,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffF0F0F0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'KN1465MIT',
                          style: TextStyle(
                            color: Colors.black12,
                            fontFamily: 'Poppins',
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
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff666666),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Card(
                elevation: 10,
                child: Container(
                  height: 35,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff7F71D9),
                  ),
                  child: Center(
                    child: GestureDetector(
                      child: const Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
