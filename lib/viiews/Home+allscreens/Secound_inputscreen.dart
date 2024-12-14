import 'package:first/const/const_list.dart';
import 'package:first/custom_widget/Custom_Button.dart';
import 'package:first/custom_widget/Custom_container.dart';
import 'package:first/viiews/Home+allscreens/third_inputscreen.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../custom_widget/Custom_text.dart';
import '../../custom_widget/customSized.dart';

class secoundinner extends StatefulWidget {
  const secoundinner({super.key});

  @override
  State<secoundinner> createState() => _secoundinnerState();
}

class _secoundinnerState extends State<secoundinner> {
  int selectedIndex = -1;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
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
              width: 0.03,
            ),
            Medium(
              MediumText: ' Trip Details',
              SizeText: 16,
              ColorText: black,
              Fontweight: FontWeight.w700,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              CustomSized(
                width: 0.04,
              ),
              Medium(
                MediumText: 'Choose You Comfort Cuisines.',
                ColorText: textcolor,
                SizeText: 18,
                Fontweight: FontWeight.w700,
              )
            ],
          ),
          CustomSized(
            width: 0,
            height: 0.005,
          ),
          CustomSized(
            width: 0,
            height: 0.001,
          ),
          Row(
            children: [
              CustomSized(
                height: 0,
                width: 0.04,
              ),
              Medium(
                MediumText:
                    'Your can select many. Don’t worry, you will get to',
                ColorText: gery,
                SizeText: 14,
                Fontweight: FontWeight.w400,
              )
            ],
          ),
          Row(
            children: [
              CustomSized(
                height: 0,
                width: 0.04,
              ),
              Medium(
                MediumText:
                    'explore local cuisine, this is just to balance when you',
                ColorText: gery,
                SizeText: 14,
                Fontweight: FontWeight.w400,
              )
            ],
          ),
          Row(
            children: [
              CustomSized(
                height: 0,
                width: 0.04,
              ),
              Medium(
                MediumText: 'need.',
                ColorText: gery,
                SizeText: 14,
                Fontweight: FontWeight.w400,
              )
            ],
          ),
          Wrap(
            children: List.generate(11, (index) {
              return GestureDetector(
                onTap: () {
                  selectedIndex = index;
                  setState(() {});
                },
                child: Minicontainer(
                  text: queen[index],
                  textcolor: selectedIndex == index ? primarycolor : gerycolor,
                ),
              );
            }),
          ),
          CustomSized(
            width: 0,
            height: 0.4,
          ),
          CustomButton(
              text: 'Next', color: primarycolor, width: 0.9, ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>thirdinner()));
          })
        ],
      ),
    );
  }

}
