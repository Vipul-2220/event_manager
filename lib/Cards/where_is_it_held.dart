import 'package:event_manager/Tabs/address_bar.dart';
import 'package:event_manager/Tabs/online_bar.dart';
import 'package:flutter/material.dart';

class WhereIsItHeld extends StatefulWidget {
  const WhereIsItHeld({Key? key}) : super(key: key);

  @override
  _WhereIsItHeldState createState() => _WhereIsItHeldState();
}

class _WhereIsItHeldState extends State<WhereIsItHeld> {
  bool showAddress = true;
  bool showOnLine = false;
  bool addressTap = true;
  bool onLineTap = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: Card(
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Where is it held?',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 90),
              child: Container(
                height: 40,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffF0F0F0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: addressTap == true
                                  ? Colors.white
                                  : Color(0xffF0F0F0),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'Address',
                                  style: TextStyle(
                                    color: addressTap == true
                                        ? Color(0xff7F71D9)
                                        : Color(0xff666666),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            showAddress = true;
                            showOnLine = false;
                            onLineTap = false;
                            addressTap = true;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: onLineTap == true
                                ? Colors.white
                                : Color(0xffF0F0F0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'On Line',
                              style: TextStyle(
                                fontSize: 18,
                                color: onLineTap == true
                                    ? Color(0xff7F71D9)
                                    : Color(0xff666666),
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            showOnLine = true;
                            showAddress = false;
                            onLineTap = true;
                            addressTap = false;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: showAddress == true ? AddressBar() : OnLineBar(),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
