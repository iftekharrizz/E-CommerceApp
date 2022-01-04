import 'package:ecommerce_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "images/vector_icons/high_heels.png", "text": "Women Fashion"},
      {"icon": "images/vector_icons/child_cloths.png", "text": "Child Fashion"},
      {
        "icon": "images/vector_icons/food_and_drink.png",
        "text": "Food & Drinks"
      },
      {
        "icon": "images/vector_icons/furniture.png",
        "text": "Furniture & livings"
      },
      {"icon": "images/vector_icons/headphone.png", "text": "Headphone"},
      {"icon": "images/vector_icons/guitar.png", "text": "Guitar"},
      {
        "icon": "images/vector_icons/kitchen_tools.png",
        "text": "Kitchen Tools"
      },
      {"icon": "images/vector_icons/shirt.png", "text": "Man Fashion"},
    ];
    return Flexible(
      fit: FlexFit.tight,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return CategoryCard(
              icon: categories[index]["icon"],
              text: categories[index]["text"],
              press: () {},
            );
          }),
    );
  }
}

class CategoryCard extends StatelessWidget {
  CategoryCard({
    this.icon,
    this.text,
    this.press,
  });

  final String? icon, text;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 70,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(icon!.toString()),
            ), // Icon Container
            const SizedBox(height: 4),
            SizedBox(
                height: 55,
                width: 55,
                child: Text(
                  text!,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(fontSize: 12, color: kCatagoryFontClr),
                )) //Text Container
          ],
        ),
      ),
    );
  }
}
