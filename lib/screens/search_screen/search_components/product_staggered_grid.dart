
import 'package:ecommerce_ui/components/rating_star_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../constants.dart';

class ProductStaggeredGrid extends StatelessWidget {
  const ProductStaggeredGrid({
    Key? key,
    required this.itemCard,
  }) : super(key: key);

  final List<Map<String, dynamic>> itemCard;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        itemCount: itemCard.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius:
                  BorderRadius.all(const Radius.circular(12)),
                  child: Image.asset(
                    itemCard[index]["itemImage"],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        itemCard[index]["itemName"],
                        style: TextStyle(
                            color: kSmallTextClr,
                            fontFamily: "ZillaSlab-medium"),
                      ),
                      Row(
                        children: [
                          StarRating(
                            rating: double.parse(itemCard[index]["itemRating"]),
                          ),
                          const SizedBox(width: 6.0,
                          ),
                          Text(itemCard[index]["itemRating"],style: TextStyle(color: kSmallTextClr,fontSize:10),),
                        ],
                      )
                    ],
                  ),
                  Text(
                    "\$${itemCard[index]["presentPrice"]}",
                    style: TextStyle(
                        color: kPrimaryButtonClr,
                        fontSize: 18,
                        fontFamily: "ZillaSlab-medium"),
                  )
                ],
              ),
            ],
          );
        },
        staggeredTileBuilder: (index) {
          return StaggeredTile.count(1, index % 4 == 0 ? 1.3 : 1.7);
        });
  }
}