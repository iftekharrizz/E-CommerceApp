
import 'package:flutter/material.dart';

import '../../../constants.dart';

class DeliveryServiceTile extends StatelessWidget {
  const DeliveryServiceTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        color: Colors.white,
        height: 100,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery Service",
                    style: kSmallTextStyle.copyWith(color: kPaymentPageClr),
                  ),
                  Text(
                    "Edit",
                    style: kSmallTextStyle.copyWith(color: kPaymentPageClr),
                  ),
                ],
              ),
              const Divider(
                height: 25,
                thickness: 1,
                color: Color(0xCAC1C1C1),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Express Delivery",style: kSmallTextStyle.copyWith(color: kPaymentPageClr, fontWeight: FontWeight.bold),),
                  Text("\$2",style: kSmallTextStyle.copyWith(color: kPaymentPageClr, fontWeight: FontWeight.bold),)
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}