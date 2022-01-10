import 'dart:async';

import 'package:ecommerce_ui/components/custom_button.dart';
import 'package:ecommerce_ui/components/custom_text_form_field.dart';
import 'package:ecommerce_ui/components/top_banner_sheet.dart';
import 'package:ecommerce_ui/screen_size_config.dart';
import 'package:ecommerce_ui/screens/authentication/otp_screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static String routeName = "/forget_password";
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int countDown = 5;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryBackGroundClr,
        elevation: 0.0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  TopBannerSheet(
                    bannerHeading: "Enter your email",
                    descriptionText: kSignInDescription,
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          EmailTextFormField(controller: email,),
                          SizedBox(height: ScreenSizeConfig.screenHeight!*0.12,),
                          Text("Code was send your email",style: kButtonLabelStyle.copyWith(color: const Color(0xFFACBAC3)),),
                          const SizedBox(height: 8.0,),
                          Text("Kylie_04@gmail.com",style: kButtonLabelStyle.copyWith(color: kPrimaryButtonClr),),
                          SizedBox(height: ScreenSizeConfig.screenHeight!*0.09,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("This code will expire on ",style: kButtonLabelStyle.copyWith(color: const Color(0xFFACBAC3),),),
                              Text("${countDown.toString()} minutes",style: kButtonLabelStyle.copyWith(color: kPrimaryButtonClr),)
                            ],
                          ),
                          const SizedBox(height: 18.0,),
                          PrimaryButton(btnLabel: "SAVE EMAIL ADDRESS",btnColor: kPrimaryButtonClr,onTap: (){
                            Navigator.pushNamed(context, OtpScreen.routeName);
                          },),
                          const SizedBox(height: 8.0,),
                          PrimaryButton(btnLabel: "RESEND LINK",btnColor: kSecondaryButtonClrDeep,),



                        ],
                      ))
                ],
              ),
            ),
          )),
    );
  }
}

class OtpDotBox extends StatelessWidget {
  const OtpDotBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          color: kTextFieldFillClr, borderRadius: BorderRadius.circular(5)),
    );
  }
}
