import 'package:ecommerce_ui/components/custom_app_bar.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/screens/home_screen/home_components/custom_bottom_navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/components/catagories.dart';
import '../../enums.dart';
import 'home_components/discount_tile.dart';
import 'home_components/popular_product_tile.dart';
import 'home_components/wallet_tile.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/home_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kTextFieldFillClr,
      appBar: const CustomAppBar(),
      body: SafeArea(
          child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Category", style: HeadLineTextStyle()),
                const SizedBox(height: 26),
                Categories(),
                const WalletTile(),
                const SizedBox(height: 26),
                Text('Sale Discount', style: HeadLineTextStyle()),
                const SizedBox(height: 26.0),
                const DiscountSegment(),
                const SizedBox(height: 26),
                Text('Popular', style: HeadLineTextStyle()),
                const SizedBox(height: 26),
                const PopularSegment(),
              ],
            ),
          ),
        ],
      )),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
