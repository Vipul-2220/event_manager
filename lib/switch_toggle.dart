import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchToggle extends StatefulWidget {
  bool isSelected;
  SwitchToggle({Key? key, required this.isSelected}) : super(key: key);

  @override
  State<SwitchToggle> createState() => _SwitchToggleState();
}

class _SwitchToggleState extends State<SwitchToggle> {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.8,
      child: CupertinoSwitch(
        trackColor: const Color(0xffE5E5E5),
        activeColor: const Color(0xff7F71D9),
        value: widget.isSelected,
        onChanged: (bool value) {
          setState(() {
            widget.isSelected = value;
          });
        },
      ),
    );
  }
}
