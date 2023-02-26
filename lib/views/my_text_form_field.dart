// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:task2_register_page/constant.dart';

class MyTextFormField extends StatelessWidget {
  MyTextFormField({
    Key? key,
    required this.controller,
    required this.validator,
    required this.labelText,
    required this.prefixIcon,
  }) : super(key: key);
  final TextEditingController controller;
  final FormFieldValidator validator;
  final String labelText;
  final IconData prefixIcon;
  IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      style: const TextStyle(
        color: kPrimaryColor,
      ),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: kPrimaryColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: kPrimaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: kPrimaryColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: kPrimaryColor,
          ),
        ),
        border: InputBorder.none,
        fillColor: Colors.grey.shade200,
        labelText: labelText,
        labelStyle: const TextStyle(color: kPrimaryColor),
        hintStyle: const TextStyle(color: kPrimaryColor),
        prefixIcon: Icon(
          prefixIcon,
          color: kPrimaryColor,
        ),
        suffixIcon: Icon(
          suffixIcon,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
