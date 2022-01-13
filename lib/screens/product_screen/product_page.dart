import 'package:ecommerce_ui/components/cart_icon_appbar.dart';
import 'package:ecommerce_ui/components/custom_button.dart';
import 'package:ecommerce_ui/components/rating_star_bar.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/controllers/cart_controller.dart';
import 'package:ecommerce_ui/controllers/cart_counter_controller.dart';
import 'package:ecommerce_ui/models/cart_model.dart';
import 'package:ecommerce_ui/screens/product_screen/product_components/counter_operator.dart';
import 'package:ecommerce_ui/screens/product_screen/product_components/product_color_circle.dart';
import 'package:ecommerce_ui/screens/product_screen/product_components/product_counter_box.dart';
import 'package:ecommerce_ui/screens/product_screen/product_components/product_size_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:get/get.dart';

class ProductPage extends StatefulWidget {
  static String routeName = "/product_page";

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  var selectedItem = 0;
  var selectedColor = 0;
  List sizeBox = ['S', 'M', 'L', "XL"];

  var itemCount = 1.obs;
  List<Color> colorList = [
    Colors.pink,
    Colors.green,
    Colors.blue,
    Colors.amber,
  ];

  CounterController counterController = Get.put(CounterController());
  CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    int index = arguments['index'];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back),
                  ),
                  const CartIconAppBar(),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Image.asset(
                cartItem[index].productImage!,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3)),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cartItem[index].productName!,
                                style: kProductLabelStyle,
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Row(
                                children: [
                                  StarRating(
                                    rating: cartItem[index].rating!,
                                  ),
                                  Text(
                                    "  ${cartItem[index].rating!.toString()}",
                                    style: kSmallTextStyle,
                                  )
                                ],
                              )
                            ],
                          ),
                          Text(
                            "\$${cartItem[index].productPrice!}",
                            style: TextStyle(
                                color: kPrimaryButtonClr,
                                fontSize: 26,
                                fontFamily: "ZillaSlab-medium"),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Size",
                            style: kSmallTextStyle,
                          ),
                          Row(
                            children: [
                              ProductSizeBox(
                                sizeLetter: "S",
                                selectedColor: selectedItem == 0
                                    ? kActiveClr
                                    : Colors.grey[200],
                                onClick: () {
                                  setState(() {
                                    selectedItem = 0;
                                  });
                                },
                              ),
                              ProductSizeBox(
                                sizeLetter: "M",
                                selectedColor: selectedItem == 1
                                    ? kActiveClr
                                    : Colors.grey[200],
                                onClick: () {
                                  setState(() {
                                    selectedItem = 1;
                                  });
                                },
                              ),
                              ProductSizeBox(
                                sizeLetter: "L",
                                selectedColor: selectedItem == 2
                                    ? kActiveClr
                                    : Colors.grey[200],
                                onClick: () {
                                  setState(() {
                                    selectedItem = 2;
                                  });
                                },
                              ),
                              ProductSizeBox(
                                sizeLetter: "XL",
                                selectedColor: selectedItem == 3
                                    ? kActiveClr
                                    : Colors.grey[200],
                                onClick: () {
                                  setState(() {
                                    selectedItem = 3;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Choose a color:",
                            style: kSmallTextStyle,
                          ),
                          Row(
                            children: [
                              ProductColorCircle(
                                isSelected: selectedColor == 0,
                                color: Colors.pink,
                                onClick: () {
                                  setState(() {
                                    selectedColor = 0;
                                  });
                                },
                              ),
                              ProductColorCircle(
                                color: Colors.orange,
                                isSelected: selectedColor == 1,
                                onClick: () {
                                  setState(() {
                                    selectedColor = 1;
                                  });
                                },
                              ),
                              ProductColorCircle(
                                color: Colors.green,
                                isSelected: selectedColor == 2,
                                onClick: () {
                                  setState(() {
                                    selectedColor = 2;
                                  });
                                },
                              ),
                              ProductColorCircle(
                                color: Colors.blue,
                                isSelected: selectedColor == 3,
                                onClick: () {
                                  setState(() {
                                    selectedColor = 3;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Select Quantity",
                            style: kSmallTextStyle,
                          ),
                          Row(
                            children: [
                              CounterOperator(
                                  operator: Icons.remove,
                                  onClick: () {
                                    counterController.counter > 1
                                        ? counterController.decrement()
                                        : null;
                                  }),
                              ProductCounterBox(
                                  count: counterController.counter),
                              CounterOperator(
                                operator: Icons.add,
                                onClick: () {
                                  counterController.increment();
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      PrimaryButton(
                        onTap: () {
                          cartController.addItem(
                            productName: cartItem[index].productName!,
                            productSize: sizeBox[selectedItem],
                            productPrice: cartItem[index].productPrice!,
                            productQuantity: counterController.counter.toInt(),
                            productImage: cartItem[index].productImage!,
                            productColor: const Color(0xFFAACCEE),
                            rating: 2.4,
                          );
                        },
                        btnColor: kPrimaryButtonClr,
                        btnLabel: "ADD TO CART",
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
