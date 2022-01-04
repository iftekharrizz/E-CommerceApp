import 'dart:async';

import 'package:ecommerce_ui/components/custom_button.dart';
import 'package:ecommerce_ui/components/top_banner_sheet.dart';
import 'package:ecommerce_ui/screen_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../constants.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp_screen";

  @override
  Widget build(BuildContext context) {
    int countDown = 5;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF7BCFE9),
        elevation: 0.0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              TopBannerSheet(
                bannerHeading: "Forgot password",
                descriptionText: kSignInDescription,
              ),
              const SizedBox(
                height: 37,
              ),
              Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: [
                      OtpTextField(
                        numberOfFields: 4,
                        fillColor: kTextFieldFillClr,
                        filled: true,
                        focusedBorderColor: const Color(0xFF7BCFE9),
                        textStyle: TextStyle(fontSize: 28),
                        //set to true to show as box or false to show as dash
                        showFieldAsBox: true,
                        obscureText: true,
                        borderWidth: 0.0,
                        fieldWidth: 70,
                        borderRadius: BorderRadius.circular(10),
                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },
                        //runs when every textfield is filled
                        onSubmit: (String verificationCode) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Verification Code"),
                                  content:
                                      Text('Code entered is $verificationCode'),
                                );
                              });
                        }, // end onSubmit
                      ),
                      SizedBox(height: ScreenSizeConfig.screenHeight!*0.12,),
                      Text("Code was send your email",style: kButtonLabelStyle.copyWith(color: Color(0xFFACBAC3)),),
                      const SizedBox(height: 8.0,),
                      Text("Kylie_04@gmail.com",style: kButtonLabelStyle.copyWith(color: kPrimaryButtonClr),),
                      SizedBox(height: ScreenSizeConfig.screenHeight!*0.09,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("This code will expire on ",style: kButtonLabelStyle.copyWith(color: Color(0xFFACBAC3),),),
                          Text("${countDown.toString()} minutes",style: kButtonLabelStyle.copyWith(color: kPrimaryButtonClr),)
                        ],
                      ),
                      const SizedBox(height: 18.0,),
                      PrimaryButton(btnLabel: "VERIFY CODE",btnColor: kPrimaryButtonClr,),
                      const SizedBox(height: 8.0,),
                      PrimaryButton(btnLabel: "RESEND CODE",btnColor: kSecondaryButtonClrDeep,),



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
