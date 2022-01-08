import 'package:ecommerce_ui/components/rating_star_bar.dart';
import 'package:ecommerce_ui/models/cart_model.dart';
import 'package:ecommerce_ui/screens/product_screen/product_page.dart';
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
          itemCount: cartItem.length,
          itemBuilder: (BuildContext context, int index) {
            return PopularProductTile(
              productImage: cartItem[index].productImage,
              productName: cartItem[index].productName,
              productPrice: cartItem[index].productPrice,
              productRating: cartItem[index].rating,
              productColor : cartItem[index].productColor,
              favorite: false,
              onTap: (){
                Navigator.pushNamed(context, ProductPage.routeName,
                arguments: {
                  'index':index
                });
              },
            );
          }),
    );
  }
}

class PopularProductTile extends StatefulWidget {

  PopularProductTile({this.productColor,this.onTap,this.productName,this.productImage,this.productPrice,this.productRating,this.favorite});
  String? productImage,productName,productPrice;
  double ? productRating;
  bool? favorite ;
  Color? productColor;
  VoidCallback? onTap;
  @override
  State<PopularProductTile> createState() => _PopularProductTileState();
}


class _PopularProductTileState extends State<PopularProductTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: widget.onTap,
            child: Container(
              height: 115,
              width: 115,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3)),
                ],),
              child: ClipRRect(
                borderRadius:
                const BorderRadius.all(Radius.circular(8)),
                child: Image.asset(widget.productImage!,
                    fit: BoxFit.fill),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 95,
              decoration: BoxDecoration(
                  borderRadius:  const BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: Colors.white,
                boxShadow: [
                 BoxShadow(
                   color: Colors.grey.withOpacity(0.5),
                   spreadRadius: 2,
                   blurRadius: 10,
                     offset: const Offset(7,4),

                 )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: widget.onTap,
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
                                rating:widget.productRating!,
                              ),
                              const SizedBox(width: 8.0,),
                              Text(widget.productRating!.toString(),style: TextStyle(fontSize: 12.0,color: kSmallTextClr),)
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
          ),
        ],
      ),
    );
  }
}