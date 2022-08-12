import 'package:event_manager/Dropdowns/alert_time.dart';
import 'package:event_manager/Dropdowns/alert_type.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MoreAboutYourEvent extends StatefulWidget {
  const MoreAboutYourEvent({Key? key}) : super(key: key);

  @override
  _MoreAboutYourEventState createState() => _MoreAboutYourEventState();
}

class _MoreAboutYourEventState extends State<MoreAboutYourEvent> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  'More about your Event!',
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
                'Event Description',
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
                  hintText: 'More about the event',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color(0xffF0F0F0),
                        child: Icon(
                          Icons.attach_file,
                          color: Color(0xff666666),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const CircleAvatar(
                        backgroundColor: Color(0xffF0F0F0),
                        child: Icon(
                          Icons.sentiment_satisfied_alt,
                          color: Color(0xff666666),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xffF0F0F0),
                        child: SvgPicture.asset(
                          'icons/Vector.svg',
                          height: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'Text format',
                        style: TextStyle(
                          color: Color(0xff666666),
                          fontSize: 18,
                          fontFamily: 'Poppins',
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text(
                    '0/2600',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xffF0F0F0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 110),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.add,
                          color: Color(0xff666666),
                        ),
                        Text(
                          'Add image',
                          style: TextStyle(
                            color: Color(0xff666666),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Alerts',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  AlertType(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xffF0F0F0),
                      ),
                      child: const Center(
                        child: Text(
                          '30',
                          style: TextStyle(
                            color: Color(0xff666666),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  AlertTime(),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Icon(
                      Icons.close,
                      color: Color(0xff666666),
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Add alert',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                ),
              ),
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
