import 'package:ecommerce_ui/components/custom_app_bar.dart';
import 'package:ecommerce_ui/screens/home_screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../constants.dart';

class SearchResultPage extends StatelessWidget {
  static String routeName = '/search_result_page';

  List<Map<String, dynamic>> itemCard = [
    {
      "itemImage": "images/pictures/headphone.jpg",
      "presentPrice": "97",
      "itemName": "Orange Summer",
      "itemRating": "4.5"
    },
    {
      "itemImage": "images/pictures/headphone.jpg",
      "presentPrice": "34",
      "itemName": "Peach Kiss",
      "itemRating": "4.3"
    },
    {
      "itemImage": "images/pictures/headphone.jpg",
      "presentPrice": "43",
      "itemName": "Puf Seleve",
      "itemRating": "4.1"
    },
    {
      "itemImage": "images/pictures/headphone.jpg",
      "presentPrice": "55",
      "itemName": "Sapphire Suit",
      "itemRating": "5.0"
    },
    {
      "itemImage": "images/pictures/headphone.jpg",
      "presentPrice": "65",
      "itemName": "Floral",
      "itemRating": "4.9"
    },
  ];

  @override
  Widget build(BuildContext context) {
    int numberResult = 20;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kTextFieldFillClr,
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("$numberResult Items Found",
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
              Expanded(
                child: StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    itemCount: itemCard.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Image.asset("images/pictures/headphone.jpg"),
                      );
                    },
                    staggeredTileBuilder: (index) {
                      StaggeredTile.count(1, index.isEven? 1.2 : 1.8);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
