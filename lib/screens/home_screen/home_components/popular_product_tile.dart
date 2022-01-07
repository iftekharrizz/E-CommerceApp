import 'package:ecommerce_ui/components/rating_star_bar.dart';
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
              productPrice: "78",
              productRating: "4.3",
              favorite: true,
            );
          }),
    );
  }
}

class PopularProductTile extends StatefulWidget {

  PopularProductTile({this.productName,this.productImage,this.productPrice,this.productRating,this.favorite});
  String? productImage,productName,productPrice,productRating;
  bool? favorite ;

  @override
  State<PopularProductTile> createState() => _PopularProductTileState();
}

class _PopularProductTileState extends State<PopularProductTile> {
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
            child: Image.asset(widget.productImage!,
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
                          widget.productName!,
                          style: kProductTileStyle,
                        ),
                        Text(
                          "\$${widget.productPrice!}",
                          style: kProductTileStyle.copyWith(fontSize: 18),
                        ),
                        Row(
                          children: [
                            StarRating(
                              rating: double.parse(widget.productRating!),
                            ),
                            const SizedBox(width: 8.0,),
                            Text(widget.productRating!,style: TextStyle(fontSize: 12.0,color: kSmallTextClr),)
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              widget.favorite = !widget.favorite!;
                            });
                          },
                          child: Container(
                            child: widget.favorite!? Icon(Icons.favorite,color: Colors.pink):Icon(Icons.favorite_outline,color: Colors.pink),
                          ),
                        ),
                        Container(
                          height: 24,
                          width: 51,
                          decoration: BoxDecoration(
                            color: kPrimaryBackGroundClr,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(Icons.shopping_cart,
                          size: 18,color: Colors.white,),
                        )
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