import 'package:first/const/colors.dart';
import 'package:first/custom_widget/Custom_container.dart';
import 'package:first/custom_widget/Custom_text.dart';
import 'package:first/custom_widget/customSized.dart';
import 'package:flutter/material.dart';

class Tripplain extends StatefulWidget {
  const Tripplain({super.key});

  @override
  State<Tripplain> createState() => _TripplainState();
}

class _TripplainState extends State<Tripplain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Medium(MediumText: 'Trip Plan',SizeText: 20,Fontweight: FontWeight.w700,ColorText: textcolor,)
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                CustomSized(width: 0.03,),
                Medium(MediumText: 'Map',ColorText: textcolor,SizeText: 18,Fontweight: FontWeight.w700,)
              ],
            ),
            CustomSized(width: 0,height: 0.01,),
            Container(
              height: MediaQuery.sizeOf(context).height*0.320,
              width: MediaQuery.sizeOf(context).width*0.900,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/map.png'),
              fit: BoxFit.cover),
                  color: Colors.transparent,borderRadius: BorderRadius.circular(12)),
            ),
            CustomSized(
              height: 0.015,
            ),
            Row(
              children: [
                CustomSized(width: 0.03,),
                Medium(MediumText: 'Trip Summary',SizeText: 18,ColorText: textcolor,Fontweight: FontWeight.w700,)
              ],
            ),
            CustomSized(
              height: 0.02,
            ),
            picturecontainertwo(write: '06:30 - 07:30'),
            CustomSized(height: 0.02,),
            picturecontainertwo(write: '07:30 - 08:30'),
            CustomSized(height: 0.02,),

            picturecontainertwo(write: '08:30 - 09:30'),
            CustomSized(height: 0.02,),

            picturecontainertwo(write: '10:30 - 11:30'),
            CustomSized(height: 0.02,),

            picturecontainertwo(write: '11:30 - 12:30'),


          ],
        ),
      ),
    );
  }
}
