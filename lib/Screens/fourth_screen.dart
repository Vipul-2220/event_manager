import 'package:event_manager/Cards/registration_form.dart';
import 'package:event_manager/TopToolbar/top_toolbar4.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class FourthScreen extends StatefulWidget {
  static String id = 'FourthScreen';
  const FourthScreen({Key? key}) : super(key: key);

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // Color(0xffE5E5E5),
        backgroundColor: Colors.white,
        elevation: 0.0,
        toolbarHeight: 15,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: const Color(0xffF9F9F9),
          height: 90.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.star,
                      color: Color(0xff7F71D9),
                      size: 30.0,
                    ),
                  ),
                  const Text(
                    'Home',
                    style: TextStyle(
                      color: Color(0xff7F71D9),
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.star,
                      color: Color(0xff7F71D9),
                      size: 30.0,
                    ),
                  ),
                  const Text(
                    'Create New',
                    style: TextStyle(
                      color: Color(0xff7F71D9),
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.star,
                      color: Color(0xff7F71D9),
                      size: 30.0,
                    ),
                  ),
                  const Text(
                    'EAG',
                    style: TextStyle(
                      color: Color(0xff7F71D9),
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.star,
                      color: Color(0xff7F71D9),
                      size: 30.0,
                    ),
                  ),
                  const Text(
                    'Profile',
                    style: TextStyle(
                      color: Color(0xff7F71D9),
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 35,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        'New Event',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: TopToolbar4(),
                ),
                const RegistrationForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
