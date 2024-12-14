import 'package:first/custom_widget/Custom_Button.dart';
import 'package:first/custom_widget/drop+down+button.dart';
import 'package:first/viiews/Home+allscreens/Secound_inputscreen.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../const/const_list.dart';
import '../../custom_widget/Custom_text.dart';
import '../../custom_widget/customSized.dart';

class inner extends StatefulWidget {
  const inner({super.key});

  @override
  State<inner> createState() => _inputState();
}

class _inputState extends State<inner> {
  int selectedIndex = -1;
  int presentIndex = -1;
  int currentIndex = -1;
  int recentIndex = -1;
  int abiIndex = -1;

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
              ),
              Medium(
                MediumText: 'Your Preferences',
                ColorText: textcolor,
                Fontweight: FontWeight.w700,
                SizeText: 18,
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
                    'If you are travelling with others, You can add a mix of',
                ColorText: gery,
                SizeText: 14,
                Fontweight: FontWeight.w400,
              )
            ],
          ),
          CustomSized(
            width: 0.03,
            height: 0,
          ),
          Row(
            children: [
              CustomSized(
                width: 0.03,
                height: 0,
              ),
              Medium(
                MediumText: 'everyone Preferences.',
                ColorText: gery,
                SizeText: 14,
                Fontweight: FontWeight.w400,
              )
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
                MediumText: 'Place Preferences',
                ColorText: textcolor,
                Fontweight: FontWeight.w700,
                SizeText: 16,
              )
            ],
          ),
          Row(
            children: [
              CustomSized(
                width: 0.03,
              ),
              Medium(
                MediumText: '1.',
                ColorText: gery,
                SizeText: 14,
                Fontweight: FontWeight.w700,
              ),
              CustomSized(
                width: 0.01,
              ),
              Medium(
                MediumText: 'Monument, History.',
                SizeText: 14,
                ColorText: textcolor,
                Fontweight: FontWeight.w600,
              )
            ],
          ),
          CustomSized(
            width: 0.003,
            height: 0.003,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(4, (index) {
              return GestureDetector(
                  onTap: () {
                    selectedIndex = index;
                    setState(() {});
                  },
                  child: Row(
                    children: [
                      Icon(
                          selectedIndex == index
                              ? Icons.trip_origin
                              : Icons.circle_outlined,
                          color: primarycolor),
                      CustomSized(
                        width: 0.02,
                        height: 0,
                      ),
                      Medium(
                        MediumText: king[index],
                        ColorText: textcolor,
                        SizeText: 12,
                        Fontweight: FontWeight.w400,
                      ),
                    ],
                  ));
            }),
          ),
          CustomSized(
            height: 0.015,
          ),
          Row(
            children: [
              CustomSized(
                width: 0.03,
              ),
              Medium(
                MediumText: '2.',
                ColorText: gery,
                SizeText: 14,
                Fontweight: FontWeight.w700,
              ),
              CustomSized(
                width: 0.01,
              ),
              Medium(
                MediumText: 'Adventure Spots, Amusement Park.',
                SizeText: 14,
                ColorText: textcolor,
                Fontweight: FontWeight.w600,
              )
            ],
          ),
          CustomSized(
            width: 0.003,
            height: 0.003,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(4, (index) {
              return GestureDetector(
                  onTap: () {
                    presentIndex = index;
                    setState(() {});
                  },
                  child: Row(
                    children: [
                      Icon(
                          presentIndex == index
                              ? Icons.trip_origin
                              : Icons.circle_outlined,
                          color: primarycolor),
                      CustomSized(
                        width: 0.02,
                        height: 0,
                      ),
                      Medium(
                        MediumText: king[index],
                        ColorText: textcolor,
                        SizeText: 12,
                        Fontweight: FontWeight.w400,
                      ),
                    ],
                  ));
            }),
          ),
          CustomSized(
            height: 0.015,
          ),
          Row(
            children: [
              CustomSized(
                width: 0.03,
              ),
              Medium(
                MediumText: '3.',
                ColorText: gery,
                SizeText: 14,
                Fontweight: FontWeight.w700,
              ),
              CustomSized(
                width: 0.01,
              ),
              Medium(
                MediumText: 'Shopping, Malls and Markets.',
                SizeText: 14,
                ColorText: textcolor,
                Fontweight: FontWeight.w600,
              )
            ],
          ),
          CustomSized(
            width: 0.003,
            height: 0.003,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(4, (index) {
              return GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                  child: Row(
                    children: [
                      Icon(
                          currentIndex == index
                              ? Icons.trip_origin
                              : Icons.circle_outlined,
                          color: primarycolor),
                      CustomSized(
                        width: 0.02,
                        height: 0,
                      ),
                      Medium(
                        MediumText: king[index],
                        ColorText: textcolor,
                        SizeText: 12,
                        Fontweight: FontWeight.w400,
                      ),
                    ],
                  ));
            }),
          ),
          CustomSized(
            height: 0.015,
          ),
          Row(
            children: [
              CustomSized(
                width: 0.03,
              ),
              Medium(
                MediumText: '4.',
                ColorText: gery,
                SizeText: 14,
                Fontweight: FontWeight.w700,
              ),
              CustomSized(
                width: 0.01,
              ),
              Medium(
                MediumText: 'Clubbing and Nightlife.',
                SizeText: 14,
                ColorText: textcolor,
                Fontweight: FontWeight.w600,
              )
            ],
          ),
          CustomSized(
            width: 0.003,
            height: 0.003,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(4, (index) {
              return GestureDetector(
                  onTap: () {
                    recentIndex = index;
                    setState(() {});
                  },
                  child: Row(
                    children: [
                      Icon(
                          recentIndex == index
                              ? Icons.trip_origin
                              : Icons.circle_outlined,
                          color: primarycolor),
                      CustomSized(
                        width: 0.02,
                        height: 0,
                      ),
                      Medium(
                        MediumText: king[index],
                        ColorText: textcolor,
                        SizeText: 12,
                        Fontweight: FontWeight.w400,
                      ),
                    ],
                  ));
            }),
          ),
          CustomSized(
            height: 0.015,
          ),
          Row(
            children: [
              CustomSized(
                width: 0.03,
              ),
              Medium(
                MediumText: '5.',
                ColorText: gery,
                SizeText: 14,
                Fontweight: FontWeight.w700,
              ),
              CustomSized(
                width: 0.01,
              ),
              Medium(
                MediumText: 'Religious Places',
                SizeText: 14,
                ColorText: textcolor,
                Fontweight: FontWeight.w600,
              )
            ],
          ),
          CustomSized(
            width: 0.003,
            height: 0.003,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(4, (index) {
              return GestureDetector(
                  onTap: () {
                    abiIndex = index;
                    setState(() {});
                  },
                  child: Row(
                    children: [
                      Icon(
                          abiIndex == index
                              ? Icons.trip_origin
                              : Icons.circle_outlined,
                          color: primarycolor),
                      CustomSized(
                        width: 0.02,
                        height: 0,
                      ),
                      Medium(
                        MediumText: king[index],
                        ColorText: textcolor,
                        SizeText: 12,
                        Fontweight: FontWeight.w400,
                      ),
                    ],
                  ));
            }),
          ),
          CustomSized(
            height: 0.015,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomSized(
                width: 0.05,
              ),
              Medium(
                MediumText: 'Primary Religious Preferences',
                ColorText: textcolor,
                SizeText: 16,
                Fontweight: FontWeight.w700,
              ),
            ],
          ),
          Container(
              height: MediaQuery.sizeOf(context).height * 0.06,
              width: MediaQuery.sizeOf(context).width * 0.9,
              decoration: BoxDecoration(
                  color: white,
                  border: Border.all(color: lightgrey),
                  borderRadius: BorderRadius.circular(8)),
              child: CustomDropDown()),
          Row(
            children: [
              CustomSized(
                width: 0.05,
                height: 0.07,
              ),
              Medium(
                MediumText: 'Secondary Religious Preferences',
                ColorText: textcolor,
                SizeText: 16,
                Fontweight: FontWeight.w700,
              )
            ],
          ),
          CustomButton(
              text: 'Next',
              color: primarycolor,
              width: 0.9,
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => secoundinner()));
              })
        ],
      ),
    );
  }
}
