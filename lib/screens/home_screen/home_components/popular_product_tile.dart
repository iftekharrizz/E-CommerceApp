import 'package:flutter/material.dart';

import '../../../constants.dart';

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
            return PopularProductTile(
              productImage: "images/pictures/headphone.jpg",
              productName: "Headphone",
              productPrice: 78,
            );
          }),
    );
  }
}

class PopularProductTile extends StatelessWidget {

  PopularProductTile({this.productName,this.productImage,this.productPrice});
  String? productImage,productName;
  int? productPrice;

  double rating =0;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
            child: Image.asset(productImage!,
                fit: BoxFit.fill),
          ),
          Expanded(
            child: Container(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          productName!,
                          style: kProductTileStyle,
                        ),
                        Text(
                          "\$${productPrice!.toString()}",
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
                            Text("4.9",style: TextStyle(fontSize: 12.0,color: kSmallTextClr),)
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset("images/vector_icons/Love_Icon2.png"),
                        Image.asset("images/vector_icons/Shop_Cart_Icon_2.png"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}