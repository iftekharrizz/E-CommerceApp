import 'package:ecommerce_ui/components/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CheckoutBottomNavigation extends StatelessWidget {
  CheckoutBottomNavigation({
    this.buttonName,
    this.onTap,
  });
  String? buttonName;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              spreadRadius: 5,
              blurRadius: 7,
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0, 3),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 35,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: kSmallTextStyle.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "\$120",
                  style: TextStyle(
                      color: kPriceTextClr,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )
              ],
            ),
            PrimaryButton(
              btnLabel: buttonName,
              btnColor: kPrimaryButtonClr,
              onTap: onTap,
            ),
          ],
        ),
      ),
    );
  }
}
