import 'package:first/const/colors.dart';
import 'package:first/const/const_list.dart';
import 'package:first/custom_widget/Custom_container.dart';
import 'package:first/custom_widget/Custom_text.dart';
import 'package:first/viiews/bottom_screen/Chatscreens/Chat_inner.dart';
import 'package:flutter/material.dart';

import '../../../custom_widget/customSized.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  int currentindex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Medium(
              MediumText: 'Chats',
              ColorText: textcolor,
              SizeText: 20,
              Fontweight: FontWeight.w700,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.058,
                  width: MediaQuery.sizeOf(context).width * 0.90,
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
              ],
            ),
            CustomSized(
              width: 0,
              height: 0.02,
            ),
            Row(
              children: [
                CustomSized(
                  width: 0.04,
                ),
                Medium(
                  MediumText: 'Favorite Contact',
                  SizeText: 18,
                  ColorText: textcolor,
                  Fontweight: FontWeight.w700,
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(8, (index) {
                    return cirle(
                      cirlceimage: chats[index],
                      chattext: chattext[index],
                    );
                  })),
            ),
            CustomSized(
              height: 0.015,
            ),
            Row(
              children: [
                CustomSized(
                  width: 0.04,
                ),
                Medium(
                  MediumText: 'Messages',
                  SizeText: 18,
                  ColorText: textcolor,
                  Fontweight: FontWeight.w700,
                )
              ],
            ),
            Column(
              children: List.generate(8, (index) {
                if (index == 0) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chatinner(picture: picturetwo[index],)));
                    },
                    child: picturecontainerthree(
                        photo: picture[index], writing: written[index]),
                  );
                } else if (index == 1) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chatinner(
                            picture: picturetwo[index],

                          )));
                    },
                    child: piccontainerfour(
                        picture: pics[index], typing: typingtext[index]),
                  );
                } else {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chatinner(picture: picturetwo[index],)));
                    },
                    child: piccontainerfive(
                        image: chats[index], message: messagetext[index]),
                  );
                }
              }),
            )
          ],
        ),
      ),
    );
  }
}
