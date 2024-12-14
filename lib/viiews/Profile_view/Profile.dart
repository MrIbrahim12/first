import 'package:first/const/colors.dart';
import 'package:first/custom_widget/Custom_text.dart';
import 'package:first/custom_widget/customSized.dart';
import 'package:flutter/material.dart';

import '../../const/const_list.dart';
import '../../custom_widget/Custom_Button.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 320,
        title: Column(
          children: [
            Row(
              children: [
                CustomSized(width: 0.38),
                Medium(
                  MediumText: 'Profile',
                  ColorText: black,
                  SizeText: 20,
                  Fontweight: FontWeight.w700,
                ),
                CustomSized(
                  width: 0.3,
                ),
                Icon(
                  Icons.more_vert,
                  color: gery,
                ),
              ],
            ),
            Column(
              children: [
                CustomSized(
                  height: 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/profile.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(200),
                          color: Colors.transparent),
                    )
                  ],
                ),
                CustomSized(
                  height: 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Medium(
                      MediumText: 'Sadia Naz',
                      ColorText: black,
                      SizeText: 18,
                      Fontweight: FontWeight.w700,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Medium(
                      MediumText: 'Sadianaz@gmail.com',
                      ColorText: gery,
                      SizeText: 12,
                      Fontweight: FontWeight.w400,
                    )
                  ],
                ),
                CustomSized(
                  height: 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.sizeOf(context).height * 0.04,
                      width: MediaQuery.sizeOf(context).width * 0.38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: lightgrey,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Medium(
                            MediumText: 'Message',
                            Fontweight: FontWeight.w700,
                            ColorText: white,
                            SizeText: 14,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                CustomSized(
                  height: 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(2, (index) {
                    return Button(
                        text: buttontwo[index],
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
                CustomSized(
                  height: 0.02,
                ),
              ],
            ),
          ],
        ),
      ),
      body: screennew[selectedindex],
    );
  }
}
