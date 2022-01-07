import 'package:ecommerce_ui/components/cart_icon_appbar.dart';
import 'package:ecommerce_ui/components/custom_app_bar.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/controllers/user_info_controller.dart';
import 'package:ecommerce_ui/screens/product_screen/product_components/counter_operator.dart';
import 'package:ecommerce_ui/screens/product_screen/product_components/product_counter_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class CartPage extends StatefulWidget {
  static String routeName = "/cart_page";

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int itemCount = 1;
  bool isChecked = false;

  void checkBoxCallBack(bool? checkBoxState) {
    if (checkBoxState != null) {
      setState(() {
        isChecked = checkBoxState;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (context,index) {
            return CartItemCard(
              itemCount: itemCount,
              checkBoxState: isChecked,
              toggleCheckboxState: checkBoxCallBack,
            );
          }
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      foregroundColor: kPrimaryBackGroundClr,
      centerTitle: true,
      title: Text(
        "My Cart",
        style: TextStyle(color: kSmallTextClr, fontSize: 18),
      ),
    );
  }
}

class CartItemCard extends StatelessWidget {
  CartItemCard({this.itemCount, this.checkBoxState, this.toggleCheckboxState});

  final int? itemCount;
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
                      Container(
                        height: 125,
                        width: 125,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          child: Image.asset(
                            "images/pictures/headphone.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Product Name",
                            style: kProductTileStyle.copyWith(fontSize: 16),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "Color : Dark Grey",
                            style: kSmallTextStyle,
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "Size : L",
                            style: kSmallTextStyle,
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "\$76",
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
                                  /* if (itemCount > 1) {
                                    setState(() {
                                      itemCount--;
                                    });
                                  }*/

                                },
                              ),
                              ProductCounterBox(count: itemCount),
                              CounterOperator(
                                operator: Icons.add,
                                onClick: () {
                                  /*setState(() {
                                    itemCount++;
                                  });*/
                                  context.read<UserInfo>().UpdateQuantity();
                                },
                              ),
                            ],
                          )
                        ],
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
