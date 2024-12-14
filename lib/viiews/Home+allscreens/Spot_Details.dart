import 'package:first/const/colors.dart';
import 'package:first/const/const_list.dart';
import 'package:first/const/images_path.dart';
import 'package:first/custom_widget/Custom_Button.dart';
import 'package:first/custom_widget/Custom_container.dart';
import 'package:first/custom_widget/Custom_text.dart';
import 'package:first/custom_widget/customSized.dart';
import 'package:first/viiews/Home+allscreens/Home_screen.dart';
import 'package:first/viiews/Home+allscreens/Input_screen.dart';
import 'package:flutter/material.dart';

class Spots extends StatelessWidget {
  final String image;
  final String imagename;
  const Spots({required this.image, required this.imagename});

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
              MediumText: 'Details',
              SizeText: 16,
              ColorText: black,
              Fontweight: FontWeight.w700,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            NewImage(
              image: image,
              name: imagename,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  return Colorcontainer(
                      color: index == 0 ? primarycolor : gerycolor,
                      weight: index == 0 ? 0.150 : 0.050);
                })),
            CustomSized(
              height: 0.020,
            ),
            Row(
              children: [
                CustomSized(
                  width: 0.03,
                ),
                Medium(
                  MediumText: 'Chowpatty Beach',
                  SizeText: 18,
                  ColorText: black,
                  Fontweight: FontWeight.w700,
                ),
                CustomSized(
                  width: 0.4,
                ),
                Icon(
                  Icons.star,
                  color: starcolor,
                ),
                CustomSized(
                  width: 0.02,
                ),
                SmallText(
                  title: '4.5',
                  textColor: gery,
                  textSize: 14,
                  fontWeight: FontWeight.w400,
                )
              ],
            ),
            Row(
              children: [
                CustomSized(
                  width: 0.03,
                ),
                Icon(
                  Icons.location_on_outlined,
                  color: gery,
                  size: 20,
                ),
                CustomSized(
                  width: 0.03,
                ),
                SmallText(
                  title: 'Mumbai India',
                  textColor: gery,
                  textSize: 14,
                  fontWeight: FontWeight.w400,
                )
              ],
            ),
            Row(
              children: [
                CustomSized(
                  width: 0.03,
                ),
                Medium(
                  MediumText: 'Descriptions',
                  SizeText: 18,
                  ColorText: black,
                  Fontweight: FontWeight.w700,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    CustomSized(
                      height: 0.0005,
                      width: 0.03,
                    ),
                    SmallText(
                      title:
                          'Ut enim at minima veniam,quis nostrum isi ut al exm',
                      textSize: 14,
                      textColor: gery,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
                Row(
                  children: [
                    CustomSized(
                      height: 0.005,
                      width: 0.03,
                    ),
                    SmallText(
                      title:
                          'ercitationem ullam corporis suscipit laboriosam, nisi ut',
                      textSize: 14,
                      textColor: gery,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
                Row(
                  children: [
                    CustomSized(
                      height: 0.0005,
                      width: 0.03,
                    ),
                    SmallText(
                      title: 'alUt enim ad minima veniam, quis nostrum',
                      textSize: 14,
                      textColor: gery,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
                Row(
                  children: [
                    CustomSized(
                      height: 0.005,
                      width: 0.03,
                    ),
                    SmallText(
                      title:
                          'exercitationem ullam corporis suscipit laboriosam, nisi',
                      textSize: 14,
                      textColor: gery,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
                Row(
                  children: [
                    CustomSized(
                      height: 0.0005,
                      width: 0.03,
                    ),
                    SmallText(
                      title:
                          'ut alUt enim ad minima veniam, quis nostrum is the',
                      textSize: 14,
                      textColor: gery,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
                Row(
                  children: [
                    CustomSized(
                      height: 0.005,
                      width: 0.03,
                    ),
                    SmallText(
                      title:
                          'har  exercitationem ullam corporis suscipit laboriosam',
                      textSize: 14,
                      textColor: gery,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
                Row(
                  children: [
                    CustomSized(
                      width: 0.03,
                    ),
                  ], //ider
                ),
                Row(
                  children: [
                    CustomSized(
                      width: 0.04,
                    ),
                    Medium(
                      MediumText: '\$ 95',
                      ColorText: primarycolor,
                      SizeText: 20,
                      Fontweight: FontWeight.w700,
                    ),
                    Medium(
                      MediumText: '/per month',
                      ColorText: gery,
                      SizeText: 16,
                      Fontweight: FontWeight.w700,
                    ),
                    CustomSized(
                      width: 0.04,
                    ),
                    CustomButton(
                      ontap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => inner()));
                      },
                      text: 'Book Now',
                      color: primarycolor,
                      width: 0.52,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
