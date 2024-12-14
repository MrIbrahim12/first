import 'package:first/const/colors.dart';
import 'package:first/const/const_list.dart';
import 'package:first/custom_widget/customSized.dart';
import 'package:flutter/material.dart';

import '../../const/images_path.dart';
import '../../custom_widget/Custom_container.dart';
import '../../custom_widget/Custom_text.dart';


class Otpscreentwo extends StatelessWidget {
  const Otpscreentwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          CustomSized(
            height: 0.2,
          ),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.120,
            width: MediaQuery.sizeOf(context).width * 0.250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(splash), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(8),
            ),
          ),
          CustomSized(
            height: 0.07,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomSized(
                width: 0.03,
              ),
              Large(
                LargeText: 'OTP',
              )
            ],
          ),
          Row(
            children: [
              CustomSized(
                width: 0.035,
                height: 0,
              ),
              SmallText(
                title: 'Please enter your OTP we sent to +344*****8 via SMS',
              )
            ],
          ),
          Row(
            children: [
              CustomSized(
                width: 0.035,
                height: 0,
              ),
              SmallText(
                title: 'and Whatsapp.',
              )
            ],
          ),
          CustomSized(
            height: 0.035,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return OtpContainer(number: NumChange[index],);
              })
          ),

          CustomSized(
            height: 0.06,),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              height: 48,
              width: 343,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: primarycolor),
              child: Medium(
                MediumText: 'Verify',
              )),

        ],
      ),
    );
  }
}

