import 'package:first/const/colors.dart';
import 'package:first/custom_widget/Custom_Button.dart';
import 'package:first/custom_widget/customSized.dart';
import 'package:first/viiews/Otpscreens/Otp_screen2.dart';
import 'package:flutter/material.dart';

import '../../const/images_path.dart';
import '../../custom_widget/Custom_container.dart';
import '../../custom_widget/Custom_text.dart';

class Otpscreenone extends StatelessWidget {
  const Otpscreenone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomSized(
            height: 0.2,
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.sizeOf(context).height * 0.120,
            width: MediaQuery.sizeOf(context).width * 0.250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(picture), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(8),
                color: Colors.black),
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
                return OtpContainer(number: null,);
              })
          ),

          CustomSized(
            height: 0.06,),
          CustomButton(
            ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Otpscreentwo()));
            },
            text: 'Verify',
            color: lightgrey,

          ),

          CustomSized(
            height: 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmallText(title: 'Don’t receive OTP?'),
              SmallText(
                title: ' Sent again',
                fontWeight: FontWeight.w700,
                textColor: primarycolor,
              )
            ],
          ),
          Row(
            children: [
              CustomSized(
                width: 0.570,
                height: 0,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.002,
                width: MediaQuery.sizeOf(context).width * 0.180,
                decoration: BoxDecoration(color: primarycolor),
              ),
            ],
          )


        ],
      ),
    );
  }
}

