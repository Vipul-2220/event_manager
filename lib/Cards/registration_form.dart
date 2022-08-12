import 'package:event_manager/models/registration_details_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  bool isSelected = false;
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
                  'Registration Form',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff363636),
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            const Center(
              child: Text(
                'Details to ask the participant',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RegistrationDetailsView('Name'),
            RegistrationDetailsView('Email'),
            RegistrationDetailsView('Contact no'),
            RegistrationDetailsView('Age'),
            RegistrationDetailsView('Date of birth'),
            RegistrationDetailsView('Profession'),
            RegistrationDetailsView('Address'),
            RegistrationDetailsView('City'),
            RegistrationDetailsView('State'),
            RegistrationDetailsView('Country'),
            RegistrationDetailsView('Pincode'),
            RegistrationDetailsView('Job title/ role in company'),
            RegistrationDetailsView('Company Name'),
            RegistrationDetailsView('File/image upload'),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Custom...',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Divider(
                thickness: 2,
                color: Color(0xffF0F0F0),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Last day to register',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                          color: tap == true ? Colors.black : Colors.black12,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              activeColor: const Color(0xff7F71D9),
                              side: const BorderSide(
                                color: Color(0xff7F71D9),
                                width: 1.5,
                              ),
                              value: is_checked,
                              onChanged: (bool? value) {
                                setState(() {
                                  is_checked = value!;
                                });
                              }),
                          const Text(
                            'by 11:59 pm',
                            style: TextStyle(
                              color: Color(0xff666666),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Change time',
                        style: TextStyle(
                          color: Color(0xff7F71D9),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Maximum registrations',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                width: 70,
                child: const TextField(
                  cursorHeight: 25.0,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                  ),
                  decoration: InputDecoration(
                    suffixIconConstraints: BoxConstraints(
                      maxHeight: 40,
                    ),
                    focusColor: Color(0xff7F71D9),
                    hintText: '500',
                    hintStyle: TextStyle(
                      color: Colors.black26,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Color(0xffC3C3C5),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: 309,
                height: 57,
                color: Colors.white,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff7F71D9)),
                  ),
                  onPressed: () {
                    // Navigator.of(context).popAndPushNamed(FourthScreen.id);
                  },
                  child: const Text(
                    'Save and Create',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
