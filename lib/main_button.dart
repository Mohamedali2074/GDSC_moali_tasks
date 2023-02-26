// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:task2_register_page/constant.dart';
import 'package:task2_register_page/routes_manger.dart';

class MainButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final Function() onPressed;

  const MainButton({
    Key? key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: backgroundColor,
            side: const BorderSide(
              width: 1,
              color: kPrimaryColor,
            )),
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
