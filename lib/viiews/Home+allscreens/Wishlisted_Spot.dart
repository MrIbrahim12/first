import 'package:first/const/const_list.dart';
import 'package:first/custom_widget/Custom_Button.dart';
import 'package:first/custom_widget/Custom_container.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../custom_widget/Custom_text.dart';
import '../../custom_widget/customSized.dart';

class fourthinner extends StatefulWidget {
  const fourthinner({super.key});

  @override
  State<fourthinner> createState() => _fourthinnerState();
}

class _fourthinnerState extends State<fourthinner> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: gery,
                      size: 40,
                    )),
                CustomSized(
                  width: 0.02,
                ),
                Medium(
                  MediumText: 'Wishlist',
                  SizeText: 16,
                  ColorText: black,
                  Fontweight: FontWeight.w700,
                ),
              ],
            ),
            CustomSized(height: 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(2, (index) {
                return Button(
                    text: button[index],
                    width: 0.45,
                    color:
                        selectedindex == index ? primarycolor : gerycolor,
                    colortext: selectedindex == index ? white : textcolor,
                    ontap: () {
                      selectedindex = index;
                      setState(() {});
                    });
              }),
            ),
          ],
        ),
      ),
      body: scanns[selectedindex],

    );
  }
}
