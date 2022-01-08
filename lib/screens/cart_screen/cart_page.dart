import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/models/cart_model.dart';
import 'package:ecommerce_ui/screens/payment_screen/payment_page.dart';
import 'package:flutter/material.dart';
import 'components/cart_item_card.dart';
import 'components/checkout_bottom_navigation.dart';

class CartPage extends StatefulWidget {
  static String routeName = "/cart_page";

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isChecked = false;
  List items = cartItem;

  void checkBoxCallBack(bool? checkBoxState) {
    if (checkBoxState != null) {
      setState(() {
        isChecked = checkBoxState;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return CartItemCard(
                itemCount: items[index].productQuantity,
                itemColor: items[index].productColor,
                itemPrice: items[index].productPrice,
                itemName: items[index].productName,
                itemSize: items[index].productSize,
                itemImage: items[index].productImage,
                toggleCheckboxState: checkBoxCallBack,
                checkBoxState: isChecked,
              );
            }),
      ),
      bottomNavigationBar: CheckoutBottomNavigation(buttonName: "CHECKOUT",onTap: (){
        Navigator.pushNamed(context, PaymentPage.routeName);
      },),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      foregroundColor: kPrimaryBackGroundClr,
      centerTitle: true,
      title: Text(
        "My Cart",
        style: TextStyle(color: kSmallTextClr, fontSize: 18),
      ),
    );
  }
}



