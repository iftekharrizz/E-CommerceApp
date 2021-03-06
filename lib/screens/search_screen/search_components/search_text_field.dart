import 'package:ecommerce_ui/screens/search_screen/search_result_page.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: "Search",
            hintStyle: TextStyle(
              color: kSmallTextClr,
              fontSize: 12,
              letterSpacing: 0.8,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: const BorderSide(color: Color(0xFFF6F6F7)),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xFFF6F6F7)),
                borderRadius: BorderRadius.circular(28)),
            disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xFFF6F6F7)),
                borderRadius: BorderRadius.circular(28)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xFFF6F6F7)),
                borderRadius: BorderRadius.circular(28)),
            suffixIcon: Container(
                height: 25,
                width: 45,
                decoration: BoxDecoration(
                    color: kPrimaryBackGroundClr,
                    borderRadius: BorderRadius.circular(20)),
                child: GestureDetector(
                  onTap: (){Navigator.pushNamed(context, SearchResultPage.routeName);},
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 22,
                  ),
                ))),
      ),
    );
  }
}