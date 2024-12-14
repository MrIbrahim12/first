
import 'package:first/const/colors.dart';
import 'package:first/const/const_list.dart';
import 'package:flutter/material.dart';



class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {

  int selectedIndex = 0 ;

  changeIndex ({required int index}){
  selectedIndex = index ;
  setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: primarycolor,size: 30),
        unselectedIconTheme: IconThemeData(color: gery,size: 20),
        selectedItemColor: primarycolor,
        currentIndex: selectedIndex,
        onTap: (index){
          changeIndex(index: index);
        },
        type:BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
          items: items,
      ),
    );
  }
}
