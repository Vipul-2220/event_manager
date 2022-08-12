import 'package:event_manager/Popups/coupon_code.dart';
import 'package:event_manager/Popups/fee_distribution.dart';
import 'package:event_manager/Screens/fourth_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HowDoYouPay extends StatefulWidget {
  const HowDoYouPay({Key? key}) : super(key: key);

  @override
  _HowDoYouPayState createState() => _HowDoYouPayState();
}

class _HowDoYouPayState extends State<HowDoYouPay> {
  bool isChecked = false;
  bool cash = false;
  bool credit = false;
  bool UPI = false;
  bool EBT = false;
  bool MP = false;

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
                  'How do you pay?',
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
                'Price of ticket',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              child: Row(
                children: [
                  const Text(
                    'Rs',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      width: 193,
                      child: const TextField(
                        cursorHeight: 25.0,
                        decoration: InputDecoration(
                          suffixIconConstraints: BoxConstraints(
                            maxHeight: 40,
                          ),
                          focusColor: Color(0xff7F71D9),
                          hintText: '40',
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 00.0),
                    child: Checkbox(
                        activeColor: const Color(0xff7F71D9),
                        side: const BorderSide(
                          color: Color(0xff7F71D9),
                          width: 1.5,
                        ),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                  ),
                  const Text(
                    'Free',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return FeeDistribution();
                        },
                      );
                    },
                    child: const Text(
                      'Add fee distribution',
                      style: TextStyle(
                        color: Color(0xff666666),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        showDialog<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return CouponCode();
                          },
                        );
                      },
                      child: Container(
                        height: 30,
                        width: 155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xffF0F0F0),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
                              child: SvgPicture.asset(
                                'icons/tag.svg',
                                height: 20,
                              ),
                            ),
                            const Text(
                              'Coupon Code',
                              style: TextStyle(
                                color: Color(0xff666666),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Payment Methods',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Checkbox(
                      activeColor: Color(0xff7F71D9),
                      side: const BorderSide(
                        color: Color(0xff7F71D9),
                        width: 1.5,
                      ),
                      value: cash,
                      onChanged: (bool? value) {
                        setState(() {
                          cash = value!;
                          credit = UPI = EBT = MP = false;
                        });
                      }),
                  const Text(
                    'Cash',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Checkbox(
                      activeColor: const Color(0xff7F71D9),
                      side: const BorderSide(
                        color: Color(0xff7F71D9),
                        width: 1.5,
                      ),
                      value: credit,
                      onChanged: (bool? value) {
                        setState(() {
                          credit = value!;
                          cash = UPI = EBT = MP = false;
                        });
                      }),
                  const Text(
                    'Credit/ Debit',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Checkbox(
                      activeColor: const Color(0xff7F71D9),
                      side: const BorderSide(
                        color: Color(0xff7F71D9),
                        width: 1.5,
                      ),
                      value: UPI,
                      onChanged: (bool? value) {
                        setState(() {
                          UPI = value!;
                          credit = cash = EBT = MP = false;
                        });
                      }),
                  const Text(
                    'UPI',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Checkbox(
                      activeColor: const Color(0xff7F71D9),
                      side: const BorderSide(
                        color: Color(0xff7F71D9),
                        width: 1.5,
                      ),
                      value: EBT,
                      onChanged: (bool? value) {
                        setState(() {
                          EBT = value!;
                          credit = UPI = cash = MP = false;
                        });
                      }),
                  const Text(
                    'Electronic Bank Transfer',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Checkbox(
                      activeColor: const Color(0xff7F71D9),
                      side: const BorderSide(
                        color: Color(0xff7F71D9),
                        width: 1.5,
                      ),
                      value: MP,
                      onChanged: (bool? value) {
                        setState(() {
                          MP = value!;
                          credit = UPI = EBT = cash = false;
                        });
                      }),
                  const Text(
                    'Mobile Payments',
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Add payment method',
                style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                ),
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
                        Navigator.of(context).popAndPushNamed(FourthScreen.id);
                      },
                      child: const Text(
                        'Done',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
