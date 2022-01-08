import 'package:ecommerce_ui/screens/cart_screen/components/checkout_bottom_navigation.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'payment_components/delivery_service_tile.dart';
import 'payment_components/description_box.dart';
import 'payment_components/product_overview_tile.dart';
import 'payment_components/shipping_address_tile.dart';

class PaymentPage extends StatelessWidget {
  static String routeName = '/payment_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ShippingAddressTile(),
              DeliveryServiceTile(),
              ProductOverviewTile(),
              DescriptionBox()
            ],
          ),
        ),
      ),
      bottomNavigationBar: CheckoutBottomNavigation(
        buttonName: "BUY NOW",
      ),
    );
  }
}



AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    foregroundColor: kPrimaryBackGroundClr,
    centerTitle: true,
    title: Text(
      "Payment",
      style: TextStyle(color: kSmallTextClr, fontSize: 18),
    ),
  );
}
