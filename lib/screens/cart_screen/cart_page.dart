import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/controllers/cart_controller.dart';
import 'package:ecommerce_ui/models/cart_model.dart';
import 'package:ecommerce_ui/screens/payment_screen/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'components/cart_item_card.dart';
import 'components/checkout_bottom_navigation.dart';

class CartPage extends StatefulWidget {
  static String routeName = "/cart_page";

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isChecked = false;
  //List items = cartItem;

  /*void checkBoxCallBack(bool? checkBoxState) {
    if (checkBoxState != null) {
      setState(() {
        isChecked = checkBoxState;
      });
    }
  }*/

  CartController controller = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.grey[100],
      body: SafeArea(
       /* child: Consumer<CartDetails>(
          builder:(context, details , child) => ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: details.bucket!.length,
              itemBuilder: (context, index) {
                return CartItemCard(
                  index: index,
                  itemPrice:details.bucket![index].productPrice,
                  itemName: details.bucket![index].productName,
                  itemSize: details.bucket![index].productSize,
                  itemImage: details.bucket![index].productImage,
                  itemColor: details.bucket![index].productColor,
                  itemCount: details.bucket![index].productQuantity,
                );
              }),
        ),*/
        child: GetBuilder<CartController>(
          init: CartController(),
          builder: (controller)=>ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: controller.cartBucket!.length,
              itemBuilder: (context, index) {
                return CartItemCard(
                  index: index,
                  itemPrice: controller.cartBucket![index].productPrice,
                  itemName: controller.cartBucket![index].productName,
                  itemSize: controller.cartBucket![index].productSize,
                  itemImage: controller.cartBucket![index].productImage,
                  itemColor: controller.cartBucket![index].productColor,
                  itemCount: controller.cartBucket![index].productQuantity,
                );
              }),
        )
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



