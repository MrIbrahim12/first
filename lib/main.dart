import 'package:first/viiews/Change_able.dart';
import 'package:first/viiews/Otpscreens/Otp_screen.dart';
import 'package:first/viiews/Home+allscreens/Home_screen.dart';
import 'package:first/viiews/Home+allscreens/City_details.dart';
import 'package:first/viiews/Home+allscreens/Input_screen.dart';
import 'package:first/viiews/Otpscreens/Otp_screen2.dart';
import 'package:first/viiews/Home+allscreens/Spot_Details.dart';
import 'package:first/viiews/bottom_screen/Chatscreens/Chat_inner.dart';
import 'package:first/viiews/bottom_screen/botton_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BottomScreen(),
    );
  }

}

