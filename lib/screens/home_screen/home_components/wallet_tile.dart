import 'package:flutter/material.dart';

import '../../../constants.dart';

class WalletTile extends StatelessWidget {
  const WalletTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWalletBannerClr,
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.maxFinite,
      height: 70,
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/vector_icons/purse_icon.png",
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "\$1.500",
                    style: kButtonLabelStyle,
                  ),
                ],
              )),
          Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WalletItems(
                    iconName: "pay_icon",
                    tag: "Pay",
                  ),
                  WalletItems(
                    iconName: "topup_icon",
                    tag: "Top Up",
                  ),
                  WalletItems(
                    iconName: "more_icon",
                    tag: "More",
                  ),
                ],
              )),
        ],
      ), // Wallet Banner
    );
  }
}


class WalletItems extends StatelessWidget {
  WalletItems({this.iconName, this.tag});
  final String? iconName, tag;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/vector_icons/${iconName.toString()}.png",
            color: Colors.white,
          ),
          const SizedBox(
            height: 2.0,
          ),
          Text(
            tag!,
            style: kButtonLabelStyle,
          ),
        ],
      ),
    );
  }
}