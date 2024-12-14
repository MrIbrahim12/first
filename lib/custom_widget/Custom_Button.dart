import 'package:flutter/material.dart';

import '../const/colors.dart';
import 'Custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback ontap;
  final double width;
  const CustomButton({
    required this.text,
    this.color = lightgrey,
    required this.ontap,
    this.width = 1,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          alignment: Alignment.center,
          height: MediaQuery.sizeOf(context).height * 0.048,
          width: MediaQuery.sizeOf(context).width * width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: color),
          child: Medium(
            MediumText: text,
          )),
    );
  }
}

class Button extends StatelessWidget {
  final VoidCallback ontap;
  final double width;
  final String text;
  final Color color;
  final Color colortext;

  const Button({
    required this.text,
    this.color = primarycolor,
    required this.ontap,
    this.width = 1,
    required this.colortext,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          alignment: Alignment.center,
          height: MediaQuery.sizeOf(context).height * 0.048,
          width: MediaQuery.sizeOf(context).width * width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: color),
          child: Medium(
            MediumText: text,ColorText: colortext,Fontweight: FontWeight.w400,SizeText: 14,
          )),
    );
  }
}
