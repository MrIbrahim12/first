import 'package:first/const/const_list.dart';
import 'package:first/custom_widget/Custom_text.dart';
import 'package:first/custom_widget/customSized.dart';
import 'package:flutter/material.dart';

import '../const/colors.dart';

class OtpContainer extends StatelessWidget {
  final String? number;
  final Color numbercolor;
  final double numsize;
  final FontWeight numweight;
  const OtpContainer({
    required this.number,
    this.numbercolor = black,
    this.numsize = 24,
    this.numweight = FontWeight.w700,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(5),
      height: MediaQuery.sizeOf(context).height * 0.070,
      width: MediaQuery.sizeOf(context).width * 0.146,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: number == null ? gery : primarycolor),
          color: Colors.white),
      child: number == null
          ? Container(
              height: 0,
              width: 0,
            )
          : Text(
              number.toString(),
              style: TextStyle(
                color: numbercolor,
                fontSize: numsize,
                fontWeight: numweight,
              ),
            ),
    );
  }
}

class Categories extends StatelessWidget {
  final String text;
  final Color textcolor;
  final FontWeight textweight;
  final double textsize;
  const Categories({
    required this.text,
    this.textcolor = black,
    this.textweight = FontWeight.w400,
    this.textsize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: gerycolor,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: textsize,
          fontWeight: textweight,
          color: textcolor,
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      clipBehavior: Clip.antiAlias,
      height: MediaQuery.sizeOf(context).height * 0.343,
      width: MediaQuery.sizeOf(context).width * 0.225,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
    );
  }
}

class IconsContainer extends StatelessWidget {
  const IconsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 2, right: 2, top: 3, bottom: 3),
      height: MediaQuery.sizeOf(context).height * 0.04,
      width: MediaQuery.sizeOf(context).width * 0.09,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: iconscolor,
      ),
      child: Icon(Icons.favorite_border),
    );
  }
}

class NewImage extends StatelessWidget {
  final String image;
  final String name;
  const NewImage({required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(18),
      clipBehavior: Clip.antiAlias,
      height: MediaQuery.sizeOf(context).height * 0.410,
      width: MediaQuery.sizeOf(context).width * 0.900,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}

class Colorcontainer extends StatelessWidget {
  final Color color;
  final double weight;
  const Colorcontainer({super.key, required this.color, required this.weight});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      height: MediaQuery.sizeOf(context).height * 0.007,
      width: MediaQuery.sizeOf(context).width * weight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
    );
  }
}

class Hyderabad extends StatelessWidget {
  final String picture;
  final String name;
  const Hyderabad({required this.picture, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(18),
      clipBehavior: Clip.antiAlias,
      height: MediaQuery.sizeOf(context).height * 0.350,
      width: MediaQuery.sizeOf(context).width * 0.400,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(picture), fit: BoxFit.cover),
          color: primarycolor,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [IconsContainer()],
          )
        ],
      ),
    );
  }
}

class Minicontainer extends StatelessWidget {
  const Minicontainer({required this.text, required this.textcolor});
  final String text;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: textcolor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Medium(
        MediumText: text,
        ColorText: Colors.black54,
        SizeText: 14,
        Fontweight: FontWeight.w400,
      ),
    );
  }
}

class imagecontainer extends StatelessWidget {
  const imagecontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(7),
          height: MediaQuery.sizeOf(context).height * 0.1,
          width: MediaQuery.sizeOf(context).width * 0.22,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/thirdway.png'),
                  fit: BoxFit.cover),
              color: black,
              borderRadius: BorderRadius.circular(8)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Medium(
                  MediumText: 'Chowpatty Beach',
                  ColorText: textcolor,
                  Fontweight: FontWeight.w700,
                  SizeText: 14,
                ),
                CustomSized(
                  height: 0,
                  width: 0.3,
                ),
                Icon(
                  Icons.favorite,
                  color: primarycolor,
                )
              ],
            ),
            Row(
              children: [
                Medium(
                  MediumText: 'Ut enim ad minima veniam, quis nostrum isi',
                  ColorText: gery,
                  SizeText: 12,
                  Fontweight: FontWeight.w400,
                )
              ],
            ),
            Row(
              children: [
                Medium(
                  MediumText: 'ut al exm ercitationem ullam corpori',
                  ColorText: gery,
                  SizeText: 12,
                  Fontweight: FontWeight.w400,
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: gery,
                  size: 19,
                ),
                CustomSized(
                  width: 0.02,
                  height: 0.03,
                ),
                Medium(
                  MediumText: 'Mombai India',
                  ColorText: gery,
                  Fontweight: FontWeight.w400,
                  SizeText: 12,
                ),
                CustomSized(
                  width: 0.25,
                  height: 0.03,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orangeAccent,
                ),
                CustomSized(
                  width: 0.02,
                  height: 0.03,
                ),
                Medium(
                    MediumText: '4.5',
                    ColorText: gery,
                    Fontweight: FontWeight.w400,
                    SizeText: 12)
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class imagecontainertwo extends StatelessWidget {
  const imagecontainertwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(7),
          height: MediaQuery.sizeOf(context).height * 0.1,
          width: MediaQuery.sizeOf(context).width * 0.22,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/thirdway.png'),
                  fit: BoxFit.cover),
              color: black,
              borderRadius: BorderRadius.circular(8)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Medium(
                  MediumText: 'Mombai, India',
                  ColorText: textcolor,
                  Fontweight: FontWeight.w700,
                  SizeText: 14,
                ),
                CustomSized(
                  height: 0,
                  width: 0.3,
                ),
                Icon(
                  Icons.favorite,
                  color: primarycolor,
                )
              ],
            ),
            Row(
              children: [
                Medium(
                  MediumText: 'Ut enim ad minima veniam, quis nostrum isi',
                  ColorText: gery,
                  SizeText: 12,
                  Fontweight: FontWeight.w400,
                )
              ],
            ),
            Row(
              children: [
                Medium(
                  MediumText: 'ut al exm ercitationem ullam corpori',
                  ColorText: gery,
                  SizeText: 12,
                  Fontweight: FontWeight.w400,
                )
              ],
            ),
            Row(
              children: [
                CustomSized(
                  width: 0.5,
                  height: 0.03,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orangeAccent,
                ),
                CustomSized(
                  width: 0.02,
                  height: 0.03,
                ),
                Medium(
                    MediumText: '4.5',
                    ColorText: gery,
                    Fontweight: FontWeight.w400,
                    SizeText: 12)
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class listcontainer extends StatelessWidget {
  final String video;
  const listcontainer({required this.video});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 0.12,
          width: MediaQuery.sizeOf(context).width * 0.25,
          decoration: BoxDecoration(
              color: Colors.black12,
              image:
                  DecorationImage(image: AssetImage(video), fit: BoxFit.cover)),
        ),
      ],
    );
  }
}

class picturecontainer extends StatelessWidget {
  final String write;
  const picturecontainer({required this.write});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSized(
          height: 0,
          width: 0.04,
        ),
        Container(
          height: MediaQuery.sizeOf(context).height * 0.09,
          width: MediaQuery.sizeOf(context).width * 0.19,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/smallpicture.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
              color: black),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                CustomSized(
                  height: 0,
                  width: 0.02,
                ),
                Medium(
                  MediumText: 'Chowpatty Beach',
                  ColorText: textcolor,
                  Fontweight: FontWeight.w700,
                  SizeText: 14,
                ),
                CustomSized(
                  height: 0,
                  width: 0.15,
                ),
                Icon(
                  Icons.watch_later_outlined,
                  size: 20,
                  color: gery,
                ),
                CustomSized(
                  height: 0,
                  width: 0.02,
                ),
                Medium(
                  MediumText: write,
                  ColorText: gery,
                  SizeText: 12,
                  Fontweight: FontWeight.w400,
                )
              ],
            ),
            Row(
              children: [
                CustomSized(
                  height: 0.03,
                  width: 0.02,
                ),
                Medium(
                  MediumText: 'Explore India gate',
                  ColorText: gery,
                  SizeText: 12,
                  Fontweight: FontWeight.w400,
                )
              ],
            ),
            Row(
              children: [
                CustomSized(
                  height: 0,
                  width: 0.02,
                ),
                Icon(
                  Icons.pedal_bike,
                  color: primarycolor,
                ),
                CustomSized(
                  height: 0,
                  width: 0.02,
                ),
                Medium(
                  MediumText: 'Sansad Bhawan on bicycle',
                  ColorText: gery,
                  SizeText: 12,
                  Fontweight: FontWeight.w400,
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class picturecontainertwo extends StatelessWidget {
  final String write;
  const picturecontainertwo({required this.write});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSized(
          height: 0,
          width: 0.04,
        ),
        Container(
          height: MediaQuery.sizeOf(context).height * 0.09,
          width: MediaQuery.sizeOf(context).width * 0.19,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/smallpicture.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
              color: black),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                CustomSized(
                  height: 0,
                  width: 0.02,
                ),
                Medium(
                  MediumText: 'Chowpatty Beach',
                  ColorText: textcolor,
                  Fontweight: FontWeight.w700,
                  SizeText: 14,
                ),
                CustomSized(
                  height: 0,
                  width: 0.15,
                ),
                Icon(
                  Icons.watch_later_outlined,
                  size: 20,
                  color: gery,
                ),
                CustomSized(
                  height: 0,
                  width: 0.02,
                ),
                Medium(
                  MediumText: write,
                  ColorText: gery,
                  SizeText: 12,
                  Fontweight: FontWeight.w400,
                )
              ],
            ),
            Row(
              children: [
                CustomSized(
                  height: 0.03,
                  width: 0.02,
                ),
                Medium(
                  MediumText: 'Explore India gate',
                  ColorText: gery,
                  SizeText: 12,
                  Fontweight: FontWeight.w400,
                )
              ],
            ),
            Row(
              children: [
                CustomSized(
                  height: 0,
                  width: 0.02,
                ),
                Icon(
                  Icons.pedal_bike,
                  color: primarycolor,
                ),
                CustomSized(
                  height: 0,
                  width: 0.02,
                ),
                Medium(
                  MediumText: 'Sansad Bhawan on bicycle',
                  ColorText: gery,
                  SizeText: 12,
                  Fontweight: FontWeight.w400,
                ),
                CustomSized(
                  width: 0.18,
                  height: 0,
                ),
                Medium(
                  MediumText: '\$ 30',
                  ColorText: primarycolor,
                  SizeText: 14,
                  Fontweight: FontWeight.w700,
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class cirle extends StatelessWidget {
  final String cirlceimage;
  final String chattext;
  const cirle({
    required this.cirlceimage,
    required this.chattext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(7),
              height: MediaQuery.sizeOf(context).height * 0.075,
              width: MediaQuery.sizeOf(context).width * 0.15,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(cirlceimage)),
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(200)),
            ),
          ],
        ),
        Row(
          children: [Text(chattext)],
        ),
      ],
    );
  }
}

class picturecontainerthree extends StatefulWidget {
  final String photo;
  final String writing;
  const picturecontainerthree({required this.photo, required this.writing});

  @override
  State<picturecontainerthree> createState() => _picturecontainerthreeState();
}

class _picturecontainerthreeState extends State<picturecontainerthree> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(7),
          height: MediaQuery.sizeOf(context).height * 0.075,
          width: MediaQuery.sizeOf(context).width * 0.15,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.photo)),
              color: Colors.black12,
              borderRadius: BorderRadius.circular(200)),
        ),
        Column(
          children: [
            Row(
              children: [
                CustomSized(
                  width: 0.01,
                  height: 0.09,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SmallText(
                      title: 'Brooklyn Simmons',
                      textColor: textcolor,
                      textSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    SmallText(
                      title: widget.writing,
                      textColor: primarycolor,
                      textSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                CustomSized(
                  width: 0.33,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Medium(
                      MediumText: '12:00 am',
                      ColorText: timecolor,
                      Fontweight: FontWeight.w300,
                      SizeText: 12,
                    ),
                    CustomSized(
                      height: 0.003,
                      width: 0.03,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.sizeOf(context).height * 0.023,
                      width: MediaQuery.sizeOf(context).width * 0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: primarycolor),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: whitecolor,
                            fontWeight: FontWeight.w300,
                            fontSize: 10),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class piccontainerfour extends StatefulWidget {
  final String picture;
  final String typing;
  const piccontainerfour({required this.picture, required this.typing});

  @override
  State<piccontainerfour> createState() => _piccontainerfourState();
}

class _piccontainerfourState extends State<piccontainerfour> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(7),
          height: MediaQuery.sizeOf(context).height * 0.075,
          width: MediaQuery.sizeOf(context).width * 0.15,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.picture)),
              color: Colors.black12,
              borderRadius: BorderRadius.circular(200)),
        ),
        CustomSized(
          height: 0.03,
          width: 0,
        ),
        Column(
          children: [
            Row(
              children: [
                CustomSized(
                  width: 0.01,
                  height: 0.01,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SmallText(
                      title: 'Brooklyn Simmons',
                      textColor: textcolor,
                      textSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    SmallText(
                      title: widget.typing,
                      textColor: gery,
                      textSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                CustomSized(
                  width: 0.01,
                  height: 0.08,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Medium(
                      MediumText: '12:00 am',
                      ColorText: timecolor,
                      Fontweight: FontWeight.w300,
                      SizeText: 12,
                    ),
                    CustomSized(
                      height: 0.003,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.sizeOf(context).height * 0.023,
                      width: MediaQuery.sizeOf(context).width * 0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: primarycolor),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: whitecolor,
                            fontWeight: FontWeight.w300,
                            fontSize: 10),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class piccontainerfive extends StatefulWidget {
  final String image;
  final String message;

  const piccontainerfive({
    required this.image,
    required this.message,
  });

  @override
  State<piccontainerfive> createState() => _piccontainerfiveState();
}

class _piccontainerfiveState extends State<piccontainerfive> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(7),
          height: MediaQuery.sizeOf(context).height * 0.075,
          width: MediaQuery.sizeOf(context).width * 0.15,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.image)),
              color: Colors.black12,
              borderRadius: BorderRadius.circular(200)),
        ),
        CustomSized(
          height: 0.03,
          width: 0,
        ),
        Column(
          children: [
            Row(
              children: [
                CustomSized(
                  width: 0.01,
                  height: 0.08,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SmallText(
                      title: 'Brooklyn Simmons',
                      textColor: textcolor,
                      textSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    Medium(
                      MediumText: widget.message,
                      SizeText: 12,
                      ColorText: gery,
                      Fontweight: FontWeight.w400,
                    ),
                  ],
                ),
                CustomSized(
                  width: 0.005,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Medium(
                      MediumText: '12:00 am',
                      ColorText: timecolor,
                      Fontweight: FontWeight.w300,
                      SizeText: 12,
                    ),
                    Icon(
                      Icons.done_all,
                      color: primarycolor,
                      size: 17,
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                CustomSized(
                  width: 0.01,
                  height: 0.02,
                ),
                CustomSized(
                  height: 0,
                  width: 0.06,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class cirletwo extends StatelessWidget {
  const cirletwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7),
      height: MediaQuery.sizeOf(context).height * 0.06,
      width: MediaQuery.sizeOf(context).width * 0.12,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/chat.png'), fit: BoxFit.cover),
          color: Colors.black12,
          borderRadius: BorderRadius.circular(200)),
    );
  }
}

class Chatcontainer extends StatelessWidget {
  final String texture;
  final Color concolor;
  final Color texcolor;
  final int index;
  const Chatcontainer(
      {required this.texture,
      required this.concolor,
      required this.texcolor,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomSized(
          width: 0.03,
          height: 0,
        ),
        index == 0 ? cirlefour() : Container(),
        index == 2 ? cirlefour() : Container(),
        Container(
          margin: EdgeInsets.all(13),
          width: MediaQuery.sizeOf(context).width * 0.6,
          padding: EdgeInsets.only(left: 6, right: 6, top: 10, bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: concolor),
          child: Column(
            children: [
              Medium(
                MediumText: texture,
                SizeText: 12,
                ColorText: texcolor,
                Fontweight: FontWeight.w400,
              ),
            ],
          ),
        ),
        index == 1 ? cirlethree() : Container(),
        index == 3 ? cirlethree() : Container(),
        index == 4 ? cirlethree() : Container(),
      ],
    );
  }
}

class cirlethree extends StatelessWidget {
  const cirlethree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7),
      height: MediaQuery.sizeOf(context).height * 0.045,
      width: MediaQuery.sizeOf(context).width * 0.09,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/chattwo.png'),
              fit: BoxFit.cover),
          color: Colors.black12,
          borderRadius: BorderRadius.circular(200)),
    );
  }
}

class cirlefour extends StatelessWidget {
  const cirlefour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7),
      height: MediaQuery.sizeOf(context).height * 0.045,
      width: MediaQuery.sizeOf(context).width * 0.09,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/chat.png'), fit: BoxFit.cover),
          color: Colors.black12,
          borderRadius: BorderRadius.circular(200)),
    );
  }
}

class Profilecontainer extends StatelessWidget {
  const Profilecontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(7),
          height: MediaQuery.sizeOf(context).height * 0.1,
          width: MediaQuery.sizeOf(context).width * 0.22,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/thirdway.png'),
                  fit: BoxFit.cover),
              color: black,
              borderRadius: BorderRadius.circular(8)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Medium(
                  MediumText: 'Chowpatty Beach',
                  ColorText: textcolor,
                  Fontweight: FontWeight.w700,
                  SizeText: 14,
                ),
              ],
            ),
            Row(
              children: [
                Medium(
                  MediumText: 'Ut enim ad minima veniam, quis nostrum isi',
                  ColorText: gery,
                  SizeText: 12,
                  Fontweight: FontWeight.w400,
                )
              ],
            ),
            Row(
              children: [
                Medium(
                  MediumText: 'ut al exm ercitationem ullam corpori',
                  ColorText: gery,
                  SizeText: 12,
                  Fontweight: FontWeight.w400,
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: gery,
                  size: 19,
                ),
                CustomSized(
                  width: 0.02,
                  height: 0.03,
                ),
                Medium(
                  MediumText: 'Mombai India',
                  ColorText: gery,
                  Fontweight: FontWeight.w400,
                  SizeText: 12,
                ),
                CustomSized(
                  width: 0.22,
                  height: 0.03,
                ),
                Icon(
                  Icons.calendar_month_rounded,
                  color:lightgrey,
                ),
                CustomSized(
                  width: 0.01,
                  height: 0.03,
                ),
                Medium(
                    MediumText: '25/1/024',
                    ColorText: gery,
                    Fontweight: FontWeight.w400,
                    SizeText: 12)
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class profilecontainertwo extends StatelessWidget {
  const profilecontainertwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(7),
          height: MediaQuery.sizeOf(context).height * 0.1,
          width: MediaQuery.sizeOf(context).width * 0.22,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/thirdway.png'),
                  fit: BoxFit.cover),
              color: black,
              borderRadius: BorderRadius.circular(8)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Medium(
                  MediumText: 'Chowpatty Beach',
                  ColorText: textcolor,
                  Fontweight: FontWeight.w700,
                  SizeText: 14,
                ),
              ],
            ),
            Row(
              children: [
                Medium(
                  MediumText: 'Ut enim ad minima veniam, quis nostrum isi',
                  ColorText: gery,
                  SizeText: 12,
                  Fontweight: FontWeight.w400,
                )
              ],
            ),
            Row(
              children: [
                Medium(
                  MediumText: 'ut al exm ercitationem ullam corpori',
                  ColorText: gery,
                  SizeText: 12,
                  Fontweight: FontWeight.w400,
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: gery,
                  size: 19,
                ),
                CustomSized(
                  width: 0.02,
                  height: 0.03,
                ),
                Medium(
                  MediumText: 'Mombai India',
                  ColorText: gery,
                  Fontweight: FontWeight.w400,
                  SizeText: 12,
                ),
                CustomSized(
                  width: 0.25,
                  height: 0.03,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orangeAccent,
                ),
                CustomSized(
                  width: 0.02,
                  height: 0.03,
                ),
                Medium(
                    MediumText: '4.5',
                    ColorText: gery,
                    Fontweight: FontWeight.w400,
                    SizeText: 12)
              ],
            ),
          ],
        ),
      ],
    );
  }
}




