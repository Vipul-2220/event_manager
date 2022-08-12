import 'package:event_manager/Dropdowns/category.dart';
import 'package:event_manager/Dropdowns/repeat.dart';
import 'package:event_manager/Dropdowns/time_period_days.dart';
import 'package:event_manager/Dropdowns/time_period_number.dart';
import 'package:event_manager/Popups/time.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AboutEvent extends StatefulWidget {
  const AboutEvent({Key? key}) : super(key: key);

  @override
  _AboutEventState createState() => _AboutEventState();
}

class _AboutEventState extends State<AboutEvent> {
  bool is_checked = false;
  bool tap = false;
  final dateformate = DateFormat('dd MMM yy');

  DateTime _date = DateTime.now();
  Future<Null> selectDate(BuildContext context) async {
    DateTime? _datePicker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1947),
      lastDate: DateTime(2025),
    );

    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
        print(
          _date.toString(),
        );
      });
    }
  }

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
                  top: 10.0,
                ),
                child: Text(
                  'About your Event',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Add Title',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
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
                  hintText: 'Event Name',
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
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Start Date',
                        style: TextStyle(
                          color: Color(0xff666666),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 140,
                        child: TextField(
                          cursorColor: Colors.white30,
                          readOnly: true,
                          decoration: InputDecoration(
                            suffixIcon: const Icon(Icons.keyboard_arrow_down),
                            hintText: (dateformate.format(_date).toString()),
                            hintStyle: TextStyle(
                              color:
                                  tap == true ? Colors.black : Colors.black12,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              tap = true;
                              selectDate(context);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Time Period',
                        style: TextStyle(
                          color: Color(0xff666666),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TimePeriodNumber(),
                          const SizedBox(
                            width: 10,
                          ),
                          TimePeriodDays(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, top: 30),
              child: Text(
                'Time',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Time(),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Container(
                      child: Row(
                        children: [
                          Checkbox(
                              activeColor: const Color(0xff7F71D9),
                              side: const BorderSide(
                                color: Color(0xff7F71D9),
                                width: 2,
                              ),
                              value: is_checked,
                              onChanged: (bool? value) {
                                setState(() {
                                  is_checked = value!;
                                });
                              }),
                          const Text(
                            'All Day',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Time Zone',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Repeat(),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 60),
              child: Text(
                'Category',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Category(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: [
                      Container(
                        height: 18,
                        width: 18,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Blue',
                        style: TextStyle(
                          color: Color(0xff666666),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
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
