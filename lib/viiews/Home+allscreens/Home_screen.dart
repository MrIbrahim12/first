import 'package:first/const/colors.dart';
import 'package:first/custom_widget/Custom_container.dart';
import 'package:first/custom_widget/Custom_text.dart';
import 'package:first/custom_widget/customSized.dart';
import 'package:first/viiews/Home+allscreens/City_details.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../const/colors.dart';
import '../../const/const_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Large(
              LargeText: 'Hello Sadia !',
              ColorText: black,
              SizeText: 20,
              weight: FontWeight.w700,
            ),
            Icon(
              Icons.favorite_border,
              color: lightgrey,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CustomSized(
              height: 0.015,
            ),
            Row(
              children: [
                CustomSized(
                  width: 0.05,
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.06,
                  width: MediaQuery.sizeOf(context).width * 0.76,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border: Border.all(color: lightgrey)),
                  child: Row(
                    children: [
                      CustomSized(
                        width: 0.03,
                      ),
                      Icon(
                        Icons.search_rounded,
                        color: lightgrey,
                        size: 25,
                      ),
                      CustomSized(
                        width: 0.02,
                      ),
                      Medium(
                        MediumText: 'Search',
                        ColorText: gery,
                        SizeText: 14,
                        Fontweight: FontWeight.w400,
                      )
                    ],
                  ),
                ),
                CustomSized(
                  width: 0.02,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(1.75),
                  height: MediaQuery.sizeOf(context).height * 0.055,
                  width: MediaQuery.sizeOf(context).width * 0.130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: primarycolor,
                  ),
                  child: Icon(
                    Icons.link,
                    color: white,
                  ),
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
                Medium(
                  MediumText: 'Categories',
                  SizeText: 18,
                  ColorText: black,
                  Fontweight: FontWeight.w700,
                ),
                CustomSized(
                  width: 0.57,
                ),
                SmallText(
                  title: 'See All',
                  textSize: 14,
                  fontWeight: FontWeight.w400,
                  textColor: secoundarycolor,
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomSized(
                    width: 0.04,
                  ),
                  Categories(
                    text: 'Mountains',
                  ),
                  CustomSized(
                    width: 0.04,
                  ),
                  Categories(
                    text: 'Seaside',
                  ),
                  CustomSized(
                    width: 0.04,
                  ),
                  Categories(
                    text: 'Beach',
                  ),
                  CustomSized(
                    width: 0.04,
                  ),
                  Categories(
                    text: 'Food',
                  ),
                  CustomSized(
                    width: 0.04,
                  ),
                  Categories(
                    text: 'Water',
                  ),
                  CustomSized(
                    width: 0.04,
                  ),
                  Categories(
                    text: 'Deserts',
                  ),
                  CustomSized(
                    width: 0.03,
                  ),
                ],
              ),
            ),
            CustomSized(
              height: 0.02,
            ),
            Row(
              children: [
                CustomSized(
                  width: 0.03,
                ),
                Medium(
                  MediumText: 'Cities',
                  ColorText: black,
                  SizeText: 18,
                  Fontweight: FontWeight.w700,
                )
              ],
            ),
            CustomSized(
              height: 0.0001,
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: name.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Mombai(
                                  image: house[index],
                                  imagename: name[index],
                                )));
                  },
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    margin: EdgeInsets.all(13),
                    height: MediaQuery.sizeOf(context).height * 0.280,
                    width: MediaQuery.sizeOf(context).width * 0.200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(house[index]), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconsContainer(),
                          ],
                        ),
                        CustomSized(
                          height: 0.11,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomSized(
                              width: 0.05,
                            ),
                            Medium(
                              MediumText: name[index],
                              ColorText: white,
                              SizeText: 18,
                              Fontweight: FontWeight.w700,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            CustomSized(
                              width: 0.04,
                            ),
                            Icon(
                              Icons.watch_later,
                              color: gerycolor,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            CustomSized(
                              width: 0.05,
                            ),
                            SmallText(
                              title: '3k visitors',
                              textColor: whitecolor,
                              textSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            CustomSized(
                              width: 0.37,
                            ),
                            SmallText(
                              title: '20 Sports',
                              textColor: whitecolor,
                              textSize: 12,
                              fontWeight: FontWeight.w400,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
