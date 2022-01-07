import 'package:ecommerce_ui/components/custom_app_bar.dart';
import 'package:ecommerce_ui/screens/search_screen/search_components/product_staggered_grid.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SearchResultPage extends StatelessWidget {
  static String routeName = '/search_result_page';

  List<Map<String, dynamic>> itemCard = [
    {
      "itemImage": "images/pictures/headphone.jpg",
      "presentPrice": "97",
      "itemName": "Orange Summer",
      "itemRating": "3.5"
    },
    {
      "itemImage": "images/pictures/headphone5.png",
      "presentPrice": "34",
      "itemName": "Peach Kiss",
      "itemRating": "4.3"
    },
    {
      "itemImage": "images/pictures/headphone2.png",
      "presentPrice": "43",
      "itemName": "Puf Seleve",
      "itemRating": "4.1"
    },
    {
      "itemImage": "images/pictures/headphone3.png",
      "presentPrice": "55",
      "itemName": "Sapphire Suit",
      "itemRating": "5.0"
    },
    {
      "itemImage": "images/pictures/headphone4.png",
      "presentPrice": "65",
      "itemName": "Floral",
      "itemRating": "2.9"
    },
    {
      "itemImage": "images/pictures/headphone5.png",
      "presentPrice": "65",
      "itemName": "Floral",
      "itemRating": "4.9"
    },
    {
      "itemImage": "images/pictures/headphone6.png",
      "presentPrice": "65",
      "itemName": "Floral",
      "itemRating": "4.9"
    },
    {
      "itemImage": "images/pictures/headphone7.png",
      "presentPrice": "65",
      "itemName": "Floral",
      "itemRating": "4.9"
    },
    {
      "itemImage": "images/pictures/headphone4.png",
      "presentPrice": "65",
      "itemName": "Floral",
      "itemRating": "4.9"
    },
    {
      "itemImage": "images/pictures/headphone2.png",
      "presentPrice": "65",
      "itemName": "Floral",
      "itemRating": "3.9"
    },
    {
      "itemImage": "images/pictures/headphone7.png",
      "presentPrice": "65",
      "itemName": "Floral",
      "itemRating": "4.9"
    },
    {
      "itemImage": "images/pictures/headphone6.png",
      "presentPrice": "65",
      "itemName": "Floral",
      "itemRating": "4.9"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kTextFieldFillClr,
      appBar: CustomAppBar(),
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${itemCard.length} Items Found",
                        style: TextStyle(color: kSmallTextClr)),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.list,
                            color: kPrimaryButtonClr,
                          ),
                          Text(
                            "  Filters",
                            style: TextStyle(color: kSmallTextClr),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12,),
                ProductStaggeredGrid(itemCard: itemCard)
              ],
            ),
          ),
        ],
      )),
    );
  }
}
