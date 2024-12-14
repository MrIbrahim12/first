import 'package:first/const/colors.dart';
import 'package:first/const/const_list.dart';
import 'package:first/custom_widget/Custom_container.dart';
import 'package:first/custom_widget/Custom_text.dart';
import 'package:first/custom_widget/customSized.dart';
import 'package:flutter/material.dart';

class Chatinner extends StatelessWidget {
  final String picture;

  const Chatinner({required this.picture});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: primarycolor,
                  elevation: 6,
                  title: Column(
                    children: [
                      CustomSized(
                        height: 0.01,
                        width: 0,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_left,
                                    color: white,
                                    size: 40,
                                  ),
                                  CustomSized(
                                    height: 0,
                                    width: 0.02,
                                  ),
                                  cirletwo(),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Medium(
                                            MediumText: 'Robert Fox',
                                            ColorText: white,
                                            SizeText: 14,
                                            Fontweight: FontWeight.w700,
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            size: 10,
                                            color: greencolor,
                                          ),
                                          CustomSized(
                                            width: 0.02,
                                            height: 0,
                                          ),
                                          Medium(
                                            MediumText: 'Online     ',
                                            SizeText: 12,
                                            ColorText: white,
                                            Fontweight: FontWeight.w400,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  CustomSized(
                                    height: 0,
                                    width: 0.3,
                                  ),
                                  Icon(
                                    Icons.videocam_outlined,
                                    color: gerycolor,
                                  ),
                                  CustomSized(
                                    height: 0,
                                    width: 0.03,
                                  ),
                                  Icon(
                                    Icons.call,
                                    color: gerycolor,
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ],
                  )))),
      body: Column(
        children: [
          CustomSized(
            width: 0,
            height: 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(1),
                height: MediaQuery.sizeOf(context).height * 0.029,
                width: MediaQuery.sizeOf(context).width * 0.25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200), color: gerycolor),
                child: Medium(
                  MediumText: 'Sat,20 oct 2023',
                  ColorText: timecolor,
                  SizeText: 10,
                  Fontweight: FontWeight.w400,
                ),
              ),
            ],
          ),
          CustomSized(
            height: 0.03,
          ),
          Column(
            children: List.generate(message.length, (index) {
              print(index);
              if (index == 0) {
                return Align(
                  alignment: Alignment.centerLeft,
                  child: Chatcontainer(
                    index: 0,
                    texture: message[index],
                    concolor: index.isEven ? gerycolor : primarycolor,
                    texcolor: index.isEven ? textcolor : whitecolor,
                  ),
                );
              } else if (index == 2) {
                return Align(
                  alignment: Alignment.centerLeft,
                  child: Chatcontainer(
                    index: 0,
                    texture: message[index],
                    concolor: index.isEven ? gerycolor : primarycolor,
                    texcolor: index.isEven ? textcolor : whitecolor,
                  ),
                );
              } else {
                return Align(
                  alignment: Alignment.centerRight,
                  child: Chatcontainer(
                      index: index,
                      texture: message[index],
                      concolor: primarycolor,
                      texcolor: whitecolor),
                );
              }
            }),
          ),
          CustomSized(
            height: 0.09,
          ),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.065,
            width: MediaQuery.sizeOf(context).width * 0.900,
            decoration: BoxDecoration(
                color: gerycolor, borderRadius: BorderRadius.circular(100)),
            child: Row(
              children: [
                CustomSized(
                  width: 0.03,
                ),
                Icon(
                  Icons.sentiment_satisfied,
                  color: gery,
                  size: 28,
                ),
                CustomSized(
                  width: 0.02,
                ),
                Medium(
                  MediumText: 'Type Message.....',
                  ColorText: gery,
                  Fontweight: FontWeight.w400,
                  SizeText: 12,
                ),
                CustomSized(
                  width: 0.4,
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.sizeOf(context).height * 0.048,
                  width: MediaQuery.sizeOf(context).width * 0.099,
                  decoration: BoxDecoration(
                      color: primarycolor,
                      borderRadius: BorderRadius.circular(200)),
                  child: Icon(
                    Icons.send,
                    color: white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
