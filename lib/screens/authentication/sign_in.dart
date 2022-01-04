import 'package:ecommerce_ui/components/app_navigation_bar.dart';
import 'package:ecommerce_ui/components/custom_button.dart';
import 'package:ecommerce_ui/components/custom_text_form_field.dart';
import 'package:ecommerce_ui/components/top_banner_sheet.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/screen_size_config.dart';
import 'package:ecommerce_ui/screens/authentication/sign_up.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ScreenSizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF7BCFE9),
        elevation: 0.0,
        actions: [
          AppBarNavigation(
            text: "SIGN UP",
            onClick: () {
              Navigator.pushReplacementNamed(context, SignUpScreen.routeName);
            },
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              TopBannerSheet(
                bannerHeading: "SIGN IN",
                descriptionText: kSignInDescription,
              ),
              const SizedBox(
                height: 37,
              ),
              Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: [
                      EmailTextFormField(controller: emailController),
                      const SizedBox(
                        height: 15.0,
                      ),
                      PasswordTextFormField(controller: passwordController),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          buildForgetPassword(context),
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      PrimaryButton(
                        onTap: () {},
                        btnColor: kPrimaryButtonClr,
                        btnLabel: "SIGN IN",
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "Or Sign in with social media",
                        style: TextStyle(fontSize: 12.0, color: kSmallTextClr),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const SocialButton(
                        iconPath: "images/icons/google.png",
                        btnLabel: "CONTINUE WITH GOOGLE",
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      SocialButton(
                        iconPath: "images/icons/facebook.png",
                        btnLabel: "CONTINUE WITH FACEBOOK",
                        btnColor: kFacebookButtonClr,
                      ),
                    ],
                  ))
            ],
          ),
        ),
      )),
    );
  }

}
