import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/screens/home_screen/home_page.dart';
import 'package:ecommerce_ui/screens/product_screen/product_page.dart';
import 'package:ecommerce_ui/screens/profile_screen/profile_page.dart';
import 'package:ecommerce_ui/screens/search_screen/search_result_page.dart';
import 'package:flutter/material.dart';
import '../../../enums.dart';


class CustomBottomNavBar extends StatelessWidget {
   CustomBottomNavBar({
    this.selectedMenu,
  });

  final MenuState? selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    Color kPrimaryColor = kPrimaryButtonClr;
    return Container(
      height: 60,
      width: 10,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 20,left: 30,right: 30),
      //margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3)
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Image.asset(
                  "images/vector_icons/home_button.png",
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () {
                   Navigator.pushReplacementNamed(context, HomePage.routeName);
                },
              ),
              IconButton(
                icon: Image.asset("images/vector_icons/notification_button.png"),
                onPressed: () {
                  Navigator.pushNamed(context, ProductPage.routeName);
                },
              ),
              IconButton(
                icon: Image.asset(
                  "images/vector_icons/profile_icon.png",
                  color: MenuState.profile == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, ProfileScreen.routeName),
              ),
            ],
          )),
    );
  }
}
