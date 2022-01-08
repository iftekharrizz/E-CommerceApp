import 'package:ecommerce_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EmailTextFormField extends StatelessWidget {
  EmailTextFormField({this.controller});
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (val) {
        return RegExp(
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(val!)
            ? null
            : "Please Enter Correct Email";
      },
      controller: controller!,
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(color: Color(0xFF57636F)),
      decoration: InputDecoration(
        fillColor: const Color(0xFFF6F6F7),
        filled: true,
        hintText: "Your email",
        contentPadding: const EdgeInsets.all(20),
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
      ),
    );
  }
}

class PasswordTextFormField extends StatelessWidget {
  PasswordTextFormField({this.onClick,this.controller, this.hintText,this.obscure});
  final TextEditingController? controller;
  final String? hintText;
  bool? obscure;
  VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        validator: (val) {
          return val!.length > 6 ? null : "Enter Password 6+ characters";
        },
        controller: controller!,
        obscureText: obscure!,
        keyboardType: TextInputType.visiblePassword,
        style: const TextStyle(color: Color(0xFF57636F)),
        decoration: InputDecoration(
          fillColor: const Color(0xFFF6F6F7),
          filled: true,
          hintText: hintText ?? "Your password",
          contentPadding: const EdgeInsets.all(20),
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
          suffixIcon: GestureDetector(
            onTap: onClick,
            child: obscure!?Icon(Icons.visibility_off,color: Colors.grey,):Icon(Icons.visibility,color: kPrimaryBackGroundClr)
          ),
        ),
      ),
    );
  }
}

class NameTextFormField extends StatelessWidget {
  NameTextFormField({this.controller});
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (val) {
        return val!.isEmpty || val.length < 3
            ? "Enter Username 3+ characters"
            : null;
      },
      controller: controller!,
      style: const TextStyle(color: Color(0xFF57636F)),
      decoration: InputDecoration(
        fillColor: const Color(0xFFF6F6F7),
        filled: true,
        hintText: "Your name",
        contentPadding: const EdgeInsets.all(20),
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
      ),
    );
  }
}
