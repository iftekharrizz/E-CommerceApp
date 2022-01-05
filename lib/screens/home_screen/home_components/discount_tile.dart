import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';


class DiscountSegment extends StatelessWidget {
  const DiscountSegment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: ListView.builder(
        shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 9,
          itemBuilder: (BuildContext context,int index) {
            return DiscountTile(
              productName: "amar product",
              pastPrice: 100,
              discount: 20,
            );
          }
      ),
    );
  }
}



class DiscountTile extends StatelessWidget {

  String? productName,productImage;
  int? discount,pastPrice;

  DiscountTile(
      {this.productName,
      this.productImage,
      this.discount,
      this.pastPrice});

  @override
  Widget build(BuildContext context) {
    var presentPrice = pastPrice! - ((pastPrice!*discount!)/100);
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
          height: 170.0,
          width: 125.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white),
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Positioned(
                top: -0.1,
                right: 8.0,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset("images/icons/badge_icon.png"),
                    const Text(
                      "Disc\n\n",
                      style: TextStyle(
                          fontSize: 10.0, color: Colors.white),
                    ),
                    Text(
                      "${discount.toString()}%",
                      style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            Positioned(
                bottom: 2.0,
                left: 8.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName!,
                      style: kProductTileStyle,
                    ),
                    Row(
                      children: [
                        Text(
                          "\$${presentPrice.toString()}   ",
                          style: kProductTileStyle,
                        ),
                        Text(
                          "\$${pastPrice.toString()}",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 10.0,
                              color: kSmallTextClr),
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}