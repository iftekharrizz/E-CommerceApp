import 'package:flutter/material.dart';

import '../../../constants.dart';

class ShippingAddressTile extends StatelessWidget {
  const ShippingAddressTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        color: Colors.white,
        height: 185,
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
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined,size: 18,color: kPrimaryButtonClr,),
                      SizedBox(width: 6.0,),
                      Text(
                        "Shipping Address:",
                        style: kSmallTextStyle.copyWith(color: kPaymentPageClr),
                      ),
                    ],
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
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("kyle",style: HeadLineTextStyle().copyWith(color: kPaymentPageClr)),
                    const SizedBox(height: 8.0,),
                    Text("California Street, Blok 4F No.9",style: kAddressLineTextStyle),
                    const SizedBox(height: 5.0,),
                    Text("San Fransisco",style: kAddressLineTextStyle),
                    const SizedBox(height: 5.0,),
                    Text("California",style: kAddressLineTextStyle),
                    const SizedBox(height: 5.0,),
                    Text("0214-0000-0000",style: kAddressLineTextStyle),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}