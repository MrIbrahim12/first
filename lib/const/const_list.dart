import 'package:first/const/colors.dart';
import 'package:first/viiews/Home+allscreens/Home_screen.dart';
import 'package:first/viiews/Profile_view/Last_inner.dart';
import 'package:first/viiews/Profile_view/Profile_inner.dart';
import 'package:first/viiews/Home+allscreens/Trip_Highlights.dart';
import 'package:first/viiews/Home+allscreens/Wishlisted_Spot.dart';
import 'package:first/viiews/Home+allscreens/Wishlisted_cities.dart';
import 'package:first/viiews/Home+allscreens/sixthinner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_widget/Custom_text.dart';
import '../viiews/Profile_view/Profile.dart';
import '../viiews/bottom_screen/Chatscreens/Chat.dart';
import '../viiews/Home+allscreens/Trip_plan.dart';
import 'images_path.dart';

var screen = [
  Home(),
  Triphighlights(),
  Tripplain(),
  Chat(),
  Profile(),
];

var items = const [
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Highlight'),
  BottomNavigationBarItem(icon: Icon(Icons.task_alt), label: 'Trip plans'),
  BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
  BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
];

List NumChange = [
  '5',
  '1',
  '8',
  '0',
];
List house = [
  one,
  two,
  three,
  four,
];
List name = [
 'Mombai, India',
  'Hyderabad, India',
  'Mombai, India',
  'Hyderabad, India',
];

List king = [
  'Rarely',
  'Occasionally',
  'Like it',
  'Love it',
];

List queen =[
  'None',
  'Kenyan ',
  'Chinese',
  'Angolan ',
  'American',
  'North Indian',
  'Chadian ',
  'California',
  'Belizean',
  'Japanese',
  'Texan',
];

List  raja=[
  'Entire trip',
  'For each day',

];

List button=[
  'Wishlisted Spots',
  'Wishlisted Cities'
];

var scanns=[
  sixth(),
  fifthinner(),
];

List video=[
  alpha,
  beta,
  gamma,
  dulta,
  alphaone,
  betaone,
  gammaone,
  dultaone,
];


var dropDownList = [
  'Hindu',
  'Muslim',
];
var dropdowntwo=[
  'Islamabad',
  'Haripur',
  'Karachi',
  'Lahore'
];
var dropdownthree=[
  'Pressurising',
  'MindFresh',
  'Entertainment',
  'Enjoying'
];
var dropdownfour=[
  'Morning',
  'Evening'
];
var dropdownfive=[
  'Deedha Road',
  'Meelum',
  'University Road',
  'Peace College'
];
var dropdownsix=[
  '10/Dec/2024',
  '12/Dec/2024',
  '14/Dec/2024',
  '15/Dec/2024',

];
var dropdownseven=[
  '10.00am',
  '12.00am',
  '05.00pm'
];

List chats=[
  a,
  b,
  c,
  d,
  e,
  f,
  g,
  h,
];

List chattext=[
  'Sana',
  'Copper',
  'Hawkins',
  'Flores',
  'Floyd',
  'Sana',
  'Copper',
  'Hawkins'
];

List picthree=[
  a,
  c
];
List messagetext=[
  'Typing...                                                             ',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
];
List conicon=[
  Container(
    alignment: Alignment.center,
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
  Container(
    alignment: Alignment.center,
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

];

List con=[
  Icon(Icons.done_all,color: primarycolor,size: 17,),
  Icon(Icons.done_all,color: primarycolor,size: 17,),
  Icon(Icons.done_all,color: primarycolor,size: 17,),
  Icon(Icons.done_all,color: primarycolor,size: 17,),
  Icon(Icons.done_all,color: primarycolor,size: 17,),
  Icon(Icons.done_all,color: primarycolor,size: 17,)

];
List pics=[
  a,
  b,
  c,
  d,
  e,
  f,
  g,
  h
];

List typingtext=[
  'Typing...                                                             ',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
];

List picture=[
  a,
  b,
  c,
  d,
  e,
  f,
  g,
  h
];

List written=[
  'Typing...',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
  'Yes, I did. They look good overall, but I’ve.....',
];

List picturetwo=[

'assets/images/Sana.png',
'assets/images/Copper.png',
'assets/images/Hawkins.png',
'assets/images/Flores.png',
'assets/images/Floyd.png',
'assets/images/Sana.png',
'assets/images/Hawkins.png',
'assets/images/Copper.png',

];

List<String> message=[
  'Head of Portugal! Enjoy lisbon’s vibrant nighlife for tany, induulge porto’s luxury spas for yash, discover Maderia’s stunning trails for your Trekking Adventure, and savor unique.',
  'Hi Alice, I\'m doing great, thanks! How about you?',
  'Head of Portugal! Enjoy lisbon’s vibrant nighlife for tany, induulge porto’s luxury spas for yash, discover Maderia’s stunning trails for your Trekking Adventure, and savor unique.',
  'Hi Alice, I\'m doing great, thanks! How about you?',
  'Hi Alice, I\'m doing great, thanks! How about you?',
];

List buttontwo=[
  'Planed Trip',
  'Completed Trip',
];

var screennew=[
  Profileinner(),
  Last(),
];
