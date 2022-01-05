import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProfileMenuTile extends StatelessWidget {
  const ProfileMenuTile({
    this.text,
    this.icon,
    this.press,
  });

  final String? text, icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        height: 65,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Color(0xFFF5F6F9)),
        child: Row(
          children: [
            Image.asset(
              icon!,
              color: kCatagoryFontClr,
              width: 22,
            ),
            SizedBox(width: 20),
            Expanded(
                child: Text(
              text!,
              style: TextStyle(color: kCatagoryFontClr),
            )),
          ],
        ),
      ),
    );
  }
}
