import 'package:ecommerce_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/components/catagories.dart';
import 'home_components/discount_tile.dart';
import 'home_components/search_bar_cart.dart';
import 'home_components/wallet_tile.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/home_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kTextFieldFillClr,
        body: SafeArea(
          child: ListView(
              physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SearchBarWithCart(),
                    const SizedBox(height: 30),
                    Text("Category", style: HeadLineTextStyle()),
                    const SizedBox(height: 30),
                    Categories(),
                    WalletTile(),
                    const SizedBox(height: 30),
                    Text('Sale Discount', style: HeadLineTextStyle()),
                    const SizedBox(height: 30.0),
                    const DiscountSegment(),
                    const SizedBox(height: 30),
                    Text('Popular', style: HeadLineTextStyle()),
                    const SizedBox(height: 30),
                    PopularSegment(),

                  ],
                ),
              ),
            ],
          )
        ));
  }
}

class PopularSegment extends StatelessWidget {
  const PopularSegment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 12,
          itemBuilder: (BuildContext context, int index) {
            return PopularProductTile();
          }),
    );
  }
}

class PopularProductTile extends StatelessWidget {

  double rating =0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 115,
                width: 115,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: Image.asset("images/pictures/headphone.jpg",
                    fit: BoxFit.fill),
              ),
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 90,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Product Name",
                                  style: kProductTileStyle,
                                ),
                                Text(
                                  "\$68",
                                  style: kProductTileStyle.copyWith(fontSize: 18),
                                ),
                                /*RatingBar.builder(
                                maxRating: 1,
                                  itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        size: 8,
                                        color: Colors.amber,
                                      ),
                                  onRatingUpdate: (rating){
                                  this.rating = rating;

                                  })*/
                                Row(
                                  children: [
                                    Image.asset("images/vector_icons/rate.png"),
                                    SizedBox(width: 8.0,),
                                    Text("4.9",style: TextStyle(fontSize: 12.0),)
                                  ],
                                ),
                               /* Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("images/vector_icons/Love_Icon2.png"),
                                    Image.asset("images/vector_icons/Shop_Cart_Icon_2.png"),
                                  ],
                                )*/
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
