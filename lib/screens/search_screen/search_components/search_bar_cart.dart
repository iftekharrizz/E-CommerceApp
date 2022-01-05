import 'package:ecommerce_ui/screens/search_screen/search_components/search_text_field.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SearchBarWithCart extends StatelessWidget {
  const SearchBarWithCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SearchTextField()),
        const SizedBox(
          width: 6.0,
        ),
        GestureDetector(
          onTap: (){},
          child: Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                  color: kPrimaryBackGroundClr,
                  borderRadius: BorderRadius.circular(20)),
              child: const Icon(
                Icons.shopping_cart,
                size: 22,
                color: Colors.white,
              )),
        )
      ],
    );
  }
}
