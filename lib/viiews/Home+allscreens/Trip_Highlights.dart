import 'package:first/const/colors.dart';
import 'package:first/const/const_list.dart';
import 'package:first/custom_widget/Custom_container.dart';
import 'package:first/custom_widget/Custom_text.dart';
import 'package:first/custom_widget/customSized.dart';
import 'package:flutter/material.dart';

class Triphighlights extends StatefulWidget {
  const Triphighlights({super.key});

  @override
  State<Triphighlights> createState() => _TriphighlightsState();
}

class _TriphighlightsState extends State<Triphighlights> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CustomSized(
              height: 0,
              width: 0.3,
            ),
            Text(
              'Trip Highlights',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: textcolor,
              ),
            ),
            CustomSized(
              height: 0,
              width: 0.2,
            ),
            Image(image: AssetImage('assets/images/sharepic.png'),color: gery,)
            
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                CustomSized(
                  width: 0.04,
                ),
                Medium(MediumText: 'Dehli Vlog',SizeText: 18,Fontweight: FontWeight.w700,ColorText: textcolor,),
              ],
            ),
            Container(
              margin: EdgeInsets.all(13),
              height: MediaQuery.sizeOf(context).height * 0.270,
              width: MediaQuery.sizeOf(context).width * 0.900,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),color: containercolor,
                image: DecorationImage(image: AssetImage('assets/images/video.png',),fit: BoxFit.cover)
              ),

            ),
            Row(
              children: [
                CustomSized(width: 0.04,),
                Medium(MediumText: 'Capture Moments',SizeText: 18,Fontweight: FontWeight.w700,
                ColorText: textcolor,)
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(8, (index){
                  return listcontainer(video: video[index],);

                }),
              ),
            ),CustomSized(width: 0,
              height: 0.01,),
            Row(
              children: [
                CustomSized(width: 0.04,),
                Medium(MediumText: 'Trip Summary',ColorText: textcolor,SizeText: 18,Fontweight: FontWeight.w700,)
              ],
            ),
            CustomSized(width: 0,
            height: 0.01,),
            Column(
              children: [
                picturecontainer(write: '06:30 - 07:30'),
                CustomSized(width: 0,height: 0.02,),
                picturecontainer(write: '09:30- 10:30'),
                CustomSized(width: 0,height: 0.02,),
                picturecontainer(write: '12:30- 02:30'),
                CustomSized(width: 0,height: 0.02,),
                picturecontainer(write: '02:30- 04:30'),
                CustomSized(width: 0,height: 0.02,),
                picturecontainer(write: '04:30- 05:30'),


              ]
            ),
          ],
        ),
      ),
    );
  }
}
