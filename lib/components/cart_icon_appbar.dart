
import 'package:ecommerce_ui/screens/cart_screen/cart_page.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CartIconAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CartIconAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, CartPage.routeName);
      },
      child: Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
              color: kPrimaryBackGroundClr,
              borderRadius: BorderRadius.circular(20)),
          child: const Icon(
            Icons.shopping_cart,
            size: 22,
            color: Colors.white,
          )),
    );
  }
}
