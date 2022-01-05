import 'package:ecommerce_ui/screens/home_screen/home_components/custom_bottom_navbar.dart';
import 'package:ecommerce_ui/screens/profile_screen/profile_components/profile_menu_tile.dart';
import 'package:ecommerce_ui/screens/profile_screen/profile_components/profile_picture.dart';
import 'package:flutter/material.dart';
import '../../enums.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile_screen";

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> menuItems = [
      {"icon": "images/vector_icons/profile_icon.png", "text": "Account"},
      {"icon": "images/vector_icons/location_icon.png", "text": "My Address"},
      {"icon": "images/vector_icons/order_list_icon.png", "text": "My Order"},
      {"icon": "images/vector_icons/love_icon_3.png", "text": "My Favorites"},
      {"icon": "images/vector_icons/card_icon.png", "text": "Payment"},
      {"icon": "images/vector_icons/settings.png", "text": "Settings"},
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.3,
              child: ProfilePicture(
                profilePicLink: "images/pictures/profile_pic.jpg",
              )),
          Expanded(
            child: ListView.builder(
                itemCount: menuItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProfileMenuTile(
                    text: menuItems[index]["text"],
                    icon: menuItems[index]["icon"],
                    press: () {},
                  );
                }),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
