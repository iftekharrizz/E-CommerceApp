import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/screen_size_config.dart';
import 'package:ecommerce_ui/screens/authentication/forget_password.dart';
import 'package:ecommerce_ui/screens/authentication/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? btnLabel;
  final Color? btnColor;

  PrimaryButton({this.onTap, this.btnColor, this.btnLabel});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.0,
      color: btnColor,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        onPressed: onTap,
        minWidth: double.infinity,
        height: 55.0,
        child: Text(
          btnLabel!,
          style: kButtonLabelStyle,
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    this.iconPath,
    this.onTap,
    this.btnLabel,
    this.btnColor,
  });

  final String? iconPath;
  final VoidCallback? onTap;
  final String? btnLabel;
  final Color? btnColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Material(
        elevation: 1.0,
        color: btnColor == null ? kSecondaryButtonClr : kFacebookButtonClr,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onTap,
          minWidth: double.infinity,
          height: 55.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30, width: 30, child: Image.asset(iconPath!)),
              const SizedBox(
                width: 10,
              ),
              Text(
                btnLabel!,
                style: btnColor == null
                    ? kButtonLabelStyle.copyWith(color: Colors.black)
                    : kButtonLabelStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

GestureDetector buildForgetPassword(BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ForgetPasswordScreen.routeName);
      },
      child: const Text(
        "Forgot password?   ",
        style: TextStyle(color: Colors.red, fontSize: 12.0),
      ));
}