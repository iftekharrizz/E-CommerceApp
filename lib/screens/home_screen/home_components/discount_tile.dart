import 'dart:ffi';

import 'package:ecommerce_ui/models/cart_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class DiscountSegment extends StatelessWidget {
  const DiscountSegment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: cartItem.length,
          itemBuilder: (BuildContext context, int index) {
            return DiscountTile(
              productName: cartItem[index].productName!,
              pastPrice: int.parse(cartItem[index].productPrice!),
              discount: cartItem[index].discount!,
              productImage: cartItem[index].productImage!,
            );
          }),
    );
  }
}

class DiscountTile extends StatelessWidget {
  String? productName, productImage;
  int? discount, pastPrice;
  VoidCallback? onTap;

  DiscountTile(
      {this.onTap,
      this.productName,
      this.productImage,
      this.discount,
      this.pastPrice});

  @override
  Widget build(BuildContext context) {
    var presentPrice = pastPrice! - ((pastPrice! * discount!) / 100);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
      child: Container(
        width: 125.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: const Offset(0, 2)),
          ],
        ),
        child: Stack(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Container(
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.transparent,
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: Image.asset(productImage!, fit: BoxFit.fitHeight),
                ),
              ),
            ),
            Positioned(
                top: -0.1,
                right: 8.0,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset("images/icons/badge_icon.png"),
                    const Text(
                      "Disc\n\n",
                      style: TextStyle(fontSize: 10.0, color: Colors.white),
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
                      style: kProductTileStyle.copyWith(fontSize: 12),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$${presentPrice.toStringAsFixed(1).toString()}   ",
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
