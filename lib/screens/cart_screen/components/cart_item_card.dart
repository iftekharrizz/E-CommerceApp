
import 'package:ecommerce_ui/controllers/cart_controller.dart';
import 'package:ecommerce_ui/screens/product_screen/product_components/counter_operator.dart';
import 'package:ecommerce_ui/screens/product_screen/product_components/product_color_circle.dart';
import 'package:ecommerce_ui/screens/product_screen/product_components/product_counter_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import '../../../constants.dart';

class CartItemCard extends StatelessWidget {
  CartItemCard(
      {this.itemCount,
        this.checkBoxState,
        this.toggleCheckboxState,
        this.itemName,
        this.itemColor,
        this.itemSize,
        this.itemPrice,
        this.itemImage});

  final int? itemCount;
  final String? itemName, itemSize, itemPrice, itemImage;
  final Color? itemColor;
  final bool? checkBoxState;
  final Function? toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Stack(
        children: [
          Container(
            color: Colors.white,
            height: 200,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                          value: checkBoxState,
                          onChanged:
                          toggleCheckboxState as void Function(bool?)?),
                      SizedBox(
                        height: 125,
                        width: 125,
                        child: ClipRRect(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(12)),
                          child: Image.asset(
                            itemImage!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              itemName!,
                              style: kProductTileStyle.copyWith(fontSize: 16),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Color : ",
                                  style: kSmallTextStyle,
                                ),
                                ProductColorCircle(
                                  colorCode: itemColor,
                                  dotSize: 15,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Size : $itemSize",
                              style: kSmallTextStyle,
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "\$$itemPrice",
                              style: kSmallTextStyle.copyWith(fontSize: 22),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Row(
                              children: [
                                CounterOperator(
                                  operator: Icons.remove,
                                  onClick: () {
                                    context
                                        .read<CartDetails>()
                                        .reduceQuantity();
                                  },
                                ),
                                ProductCounterBox(count: itemCount),
                                CounterOperator(
                                  operator: Icons.add,
                                  onClick: () {
                                    context.read<CartDetails>().addQuantity();
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    height: 25,
                    thickness: 1,
                    indent: 30,
                    endIndent: 30,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Text(
                        "Sub Total:",
                        style: kProductTileStyle.copyWith(fontSize: 15),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          "\$152",
                          style: TextStyle(
                              color: kPriceTextClr,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Positioned(
            top: 8,
            right: 8,
            child: Icon(Icons.delete),
          )
        ],
      ),
    );
  }
}