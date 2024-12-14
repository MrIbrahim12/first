import 'package:first/const/const_list.dart';
import 'package:first/custom_widget/Custom_Button.dart';
import 'package:first/custom_widget/drop+down+button.dart';
import 'package:first/viiews/Home+allscreens/Wishlisted_Spot.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../custom_widget/Custom_text.dart';
import '../../custom_widget/customSized.dart';

class thirdinner extends StatefulWidget {
  const thirdinner({super.key});

  @override
  State<thirdinner> createState() => _thirdinnerState();
}

class _thirdinnerState extends State<thirdinner> {
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
                width: 0.03,
                height: 0.06,
              ),
              Medium(
                MediumText: 'Generate Itinerary',
                SizeText: 18,
                Fontweight: FontWeight.w700,
                ColorText: textcolor,
              )
            ],
          ),
          CustomSized(
            height: 0,
          ),
          Row(
            children: [
              CustomSized(
                height: 0,
                width: 0.03,
              ),
              Medium(
                MediumText: 'We will start by knowing Your Requirements.',
                SizeText: 14,
                Fontweight: FontWeight.w400,
                ColorText: gery,
              )
            ],
          ),
          CustomSized(
            height: 0.02,
          ),
          Row(
            children: [
              CustomSized(
                width: 0.03,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.06,
                width: MediaQuery.sizeOf(context).width * 0.9,
                decoration: BoxDecoration(
                    color: white,
                    border: Border.all(color: lightgrey),
                    borderRadius: BorderRadius.circular(8)),
                child: Dropdowntwo(),
              ),
            ],
          ),
          CustomSized(
            height: 0.02,
          ),
          Row(
            children: [
              CustomSized(
                width: 0.03,
              ),
              Container(
                  height: MediaQuery.sizeOf(context).height * 0.06,
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  decoration: BoxDecoration(
                      color: white,
                      border: Border.all(color: lightgrey),
                      borderRadius: BorderRadius.circular(8)),
                  child: Dropdownthree()),
            ],
          ),
          CustomSized(
            height: 0.02,
          ),
          Row(
            children: [
              CustomSized(
                width: 0.03,
              ),
              Container(
                  height: MediaQuery.sizeOf(context).height * 0.06,
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  decoration: BoxDecoration(
                      color: white,
                      border: Border.all(color: lightgrey),
                      borderRadius: BorderRadius.circular(8)),
                  child: Dropdownfour()),
            ],
          ),
          CustomSized(
            height: 0.01,
          ),
          Row(
            children: [
              CustomSized(
                width: 0.03,
              ),
              Medium(
                MediumText: 'Travel date & timing',
                SizeText: 18,
                Fontweight: FontWeight.w700,
                ColorText: textcolor,
              )
            ],
          ),
          Row(
            children: [
              CustomSized(
                width: 0.03,
                height: 0,
              ),
              Medium(
                MediumText:
                    'Do you want to give date-time for each place or want',
                SizeText: 14,
                Fontweight: FontWeight.w400,
                ColorText: gery,
              )
            ],
          ),
          Row(
            children: [
              CustomSized(
                width: 0.03,
                height: 0,
              ),
              Medium(
                MediumText: 'us to decide what’s best?',
                SizeText: 14,
                Fontweight: FontWeight.w400,
                ColorText: gery,
              )
            ],
          ),
          CustomSized(
            height: 0.02,
          ),
          Column(
            children: List.generate(2, (index) {
              return GestureDetector(
                onTap: () {
                  selectedIndex = index;
                  setState(() {});
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomSized(
                      width: 0.03,
                      height: 0,
                    ),
                    Icon(
                        selectedIndex == index
                            ? Icons.trip_origin
                            : Icons.circle_outlined,
                        color: primarycolor),
                    CustomSized(
                      width: 0.02,
                      height: 0.045,
                    ),
                    Medium(
                      MediumText: raja[index],
                      SizeText: 14,
                      Fontweight: FontWeight.w400,
                      ColorText: textcolor,
                    )
                  ],
                ),
              );
            }),
          ),
          Row(
            children: [
              CustomSized(
                width: 0.03,
                height: 0.08,
              ),
              Medium(
                MediumText: '1st Day',
                SizeText: 16,
                Fontweight: FontWeight.w700,
                ColorText: textcolor,
              )
            ],
          ),
          CustomSized(
            height: 0,
          ),
          Row(
            children: [
              CustomSized(
                width: 0.03,
              ),
              Container(
                  height: MediaQuery.sizeOf(context).height * 0.06,
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  decoration: BoxDecoration(
                      color: white,
                      border: Border.all(color: lightgrey),
                      borderRadius: BorderRadius.circular(8)),
                  child: Dropdownfive()),
            ],
          ),
          CustomSized(
            height: 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: MediaQuery.sizeOf(context).height * 0.06,
                  width: MediaQuery.sizeOf(context).width * 0.42,
                  decoration: BoxDecoration(
                      color: white,
                      border: Border.all(color: lightgrey),
                      borderRadius: BorderRadius.circular(8)),
                  child: Dropdownsix()),
              CustomSized(
                width: 0.03,
              ),
              Container(
                  height: MediaQuery.sizeOf(context).height * 0.06,
                  width: MediaQuery.sizeOf(context).width * 0.42,
                  decoration: BoxDecoration(
                      color: white,
                      border: Border.all(color: lightgrey),
                      borderRadius: BorderRadius.circular(8)),
                  child: Dropdownseven()),
            ],
          ),
          CustomSized(
            width: 0,
            height: 0.05,
          ),
          CustomButton(
              text: 'Done',
              color: primarycolor,
              width: 0.9,
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => fourthinner()));
              })
        ],
      ),
    );
  }
}
