import 'package:flutter/material.dart';

class EmailTextFormField extends StatelessWidget {
  EmailTextFormField({this.controller});
  final TextEditingController? controller;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller!,
      style: const TextStyle(color: Color(0xFF57636F)),
      decoration: InputDecoration(
        fillColor: const Color(0xFFF6F6F7),
        filled: true,
        hintText:"Your email",
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
  PasswordTextFormField({this.controller,this.hintText});
  final TextEditingController? controller;
  final String? hintText;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller!,
        obscureText: true,
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
          suffixIcon: const Icon(Icons.visibility_off_sharp),
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
      controller: controller!,
      style: const TextStyle(color: Color(0xFF57636F)),
      decoration: InputDecoration(
        fillColor: const Color(0xFFF6F6F7),
        filled: true,
        hintText:"Your name",
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

