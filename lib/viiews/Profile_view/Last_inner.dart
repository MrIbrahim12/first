import 'package:first/custom_widget/Custom_container.dart';
import 'package:flutter/material.dart';

class Last extends StatefulWidget {
  const Last({super.key});

  @override
  State<Last> createState() => _LastState();
}

class _LastState extends State<Last> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
          children: List.generate(8, (index) {
            return profilecontainertwo();
          })),
    ),);
  }
}
