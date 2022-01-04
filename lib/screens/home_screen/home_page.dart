import 'package:ecommerce_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/components/catagories.dart';
import 'home_components/discount_tile.dart';
import 'home_components/search_bar_cart.dart';
import 'home_components/wallet_tile.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/home_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: kTextFieldFillClr,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchBarWithCart(),
                const SizedBox(height: 30),
                Text("Catagory", style: HeadLineTextStyle()),
                const SizedBox(height: 30),
                Categories(),
                WalletTile(),
                const SizedBox(height: 30),
                Text('Sale Discount', style: HeadLineTextStyle()),
                const SizedBox(height: 30.0),
                 DiscountSegment(),
                const SizedBox(height: 30),
                Text('Popular', style: HeadLineTextStyle()),
                const SizedBox(height: 30),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 115,
                          width: 115,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white
                          ),
                          child: Image.asset("images/pictures/headphone.jpg"),
                        ),
                        Expanded(
                          child: Container(
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white
                            ),
                          ),
                        ),

                      ],
                    )
                  ],
                )


              ],
            ),
          ),
        ));
  }
}



