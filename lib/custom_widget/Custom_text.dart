import 'package:first/const/colors.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String title;
  final Color textColor;
  final double textSize;
  final FontWeight fontWeight;

  const SmallText(
      {super.key,
      required this.title,
      this.textColor = gery,
      this.textSize = 14,
      this.fontWeight = FontWeight.w400});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: Text(

        title,

        style: TextStyle(
          color: textColor,
          fontSize: textSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}

class Medium extends StatelessWidget {
  final String MediumText;
  final Color ColorText;
  final double SizeText;
  final FontWeight Fontweight;
  const Medium({
    required this.MediumText,
    this.ColorText = white,
    this.SizeText = 16,
    this.Fontweight = FontWeight.w700,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      MediumText,
      style: TextStyle(
          color: ColorText, fontSize: SizeText, fontWeight: Fontweight),
    );
  }
}

class Large extends StatelessWidget {
  final String LargeText;
  final Color ColorText;
  final double SizeText;
  final FontWeight weight;
  const Large(
      {required this.LargeText,
      this.ColorText = black,
      this.SizeText = 20,
      this.weight = FontWeight.w700});

  @override
  Widget build(BuildContext context) {
    return Text(
      LargeText,
      style:
          TextStyle(color: ColorText, fontSize: SizeText, fontWeight: weight),
    );
  }
}


