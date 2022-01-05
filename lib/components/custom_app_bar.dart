import 'package:ecommerce_ui/screens/search_screen/search_components/search_bar_cart.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const SearchBarWithCart(),
      backgroundColor: kTextFieldFillClr,
      automaticallyImplyLeading: false,
      elevation: 0.0,
    );
  }

}
