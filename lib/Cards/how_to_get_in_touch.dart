import 'package:event_manager/Popups/Url/browser_url.dart';
import 'package:event_manager/Popups/Url/custom_url.dart';
import 'package:event_manager/Popups/Url/facebook_url.dart';
import 'package:event_manager/Popups/Url/instagram_url.dart';
import 'package:event_manager/Popups/Url/linkedIn_url.dart';
import 'package:event_manager/Popups/Url/twitter_url.dart';
import 'package:event_manager/Screens/third_screen.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HowToGetInTouch extends StatefulWidget {
  const HowToGetInTouch({Key? key}) : super(key: key);

  @override
  _HowToGetInTouchState createState() => _HowToGetInTouchState();
}

class _HowToGetInTouchState extends State<HowToGetInTouch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: Card(
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 30.0,
                ),
                child: Text(
                  'How to get in touch?',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff363636),
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Email id',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                cursorHeight: 25.0,
                decoration: InputDecoration(
                  focusColor: Color(0xff7F71D9),
                  hintText: 'xyz@gmail.com',
                  hintStyle: TextStyle(
                    color: Colors.black26,
                    fontSize: 18,
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
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Add email',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Country',
                        style: TextStyle(
                          color: Color(0xff666666),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Container(
                        width: 90,
                        child: const TextField(
                          cursorHeight: 25.0,
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black26,
                            ),
                            focusColor: Color(0xff7F71D9),
                            hintText: '  +91',
                            hintStyle: TextStyle(
                              color: Colors.black26,
                              fontSize: 18,
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
                      const Text(
                        'Phone',
                        style: TextStyle(
                          color: Color(0xff666666),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Container(
                        width: 150,
                        child: TextField(
                          cursorHeight: 25.0,
                          decoration: InputDecoration(
                            suffixIconConstraints: const BoxConstraints(
                              maxHeight: 40,
                            ),
                            suffixIcon: CircleAvatar(
                                backgroundColor: const Color(0xffF0F0F0),
                                child: SvgPicture.asset(
                                  'icons/phone.svg',
                                  height: 25,
                                )),
                            focusColor: const Color(0xff7F71D9),
                            hintText: '4220568975',
                            hintStyle: const TextStyle(
                              color: Colors.black26,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                            ),
                            border: const UnderlineInputBorder(
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
            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.all(10.0),
            //       child:
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 40.0),
            //       child:
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Add number',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return InstagramUrl();
                        },
                      );
                    },
                    child: CircleAvatar(
                        backgroundColor: const Color(0xffF0F0F0),
                        radius: 25,
                        child: SvgPicture.asset(
                          'icons/instagram.svg',
                          height: 20,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return FacebookUrl();
                        },
                      );
                    },
                    child: CircleAvatar(
                        backgroundColor: const Color(0xffF0F0F0),
                        radius: 25,
                        child: SvgPicture.asset(
                          'icons/facebook.svg',
                          height: 20,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return TwitterUrl();
                        },
                      );
                    },
                    child: CircleAvatar(
                        backgroundColor: const Color(0xffF0F0F0),
                        radius: 25,
                        child: SvgPicture.asset(
                          'icons/twitter.svg',
                          height: 20,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return LinkedIn();
                        },
                      );
                    },
                    child: CircleAvatar(
                        backgroundColor: const Color(0xffF0F0F0),
                        radius: 25,
                        child: SvgPicture.asset(
                          'icons/linkedin.svg',
                          height: 20,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return BrowseUrl();
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: CircleAvatar(
                          backgroundColor: const Color(0xffF0F0F0),
                          radius: 25,
                          child: SvgPicture.asset(
                            'icons/browser.svg',
                            height: 20,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: GestureDetector(
                onTap: () {
                  showDialog<void>(
                    context: context,
                    barrierDismissible: false, // user must tap button!
                    builder: (BuildContext context) {
                      return CustomUrl();
                    },
                  );
                },
                child: const CircleAvatar(
                    backgroundColor: Color(0xffF0F0F0),
                    radius: 25,
                    child: Icon(
                      Icons.add,
                      color: Color(0xff666666),
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(''),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    width: 95,
                    color: Colors.white,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff7F71D9)),
                      ),
                      onPressed: () {
                        Navigator.of(context).popAndPushNamed(ThirdScreen.id);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
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
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
