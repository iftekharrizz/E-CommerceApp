import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductOverviewTile extends StatelessWidget {
  const ProductOverviewTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        color: Colors.white,
        height: 100,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    child: ClipRRect(
                      borderRadius:
                      BorderRadius.all(const Radius.circular(12)),
                      child: Image.asset(
                        "images/pictures/headphone4.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Levi's Jeans",style: HeadLineTextStyle().copyWith(color: kPaymentPageClr,fontSize: 15)),
                      const SizedBox(height: 8.0,),
                      Text("Color: Dark Grey | Size : L",style: kSmallTextStyle),
                      const SizedBox(height: 5.0,),
                      Text("\$76",style: kAddressLineTextStyle.copyWith(fontSize: 16)),

                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("x2",style: kSmallTextStyle,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}