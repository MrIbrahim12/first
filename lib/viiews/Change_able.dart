import 'package:first/const/colors.dart';
import 'package:flutter/material.dart';

import 'New_screen.dart';

class Changeable extends StatefulWidget {
  const Changeable({super.key});
  @override
  State<Changeable> createState() => _ChangeableState();
}

class _ChangeableState extends State<Changeable> {
  bool driver = false;
  bool pessenger = false;

  selectDriver() {
    driver = true;
    pessenger = false;
    setState(() {});
  }

  selectPesseanger() {
    driver = false;
    pessenger = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 350,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  selectDriver();
                  Future.delayed(Duration(milliseconds: 80), () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NextScreen()));
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: driver == true ? Colors.blue : Colors.black12,
                      borderRadius: BorderRadius.circular(13)),
                  child: Text(
                    'Driver',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  height: 120,
                  width: 120,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  selectPesseanger();
                  Future.delayed(Duration(milliseconds: 80), () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NextScreen()));
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: pessenger == true ? Colors.blue : Colors.black12,
                      borderRadius: BorderRadius.circular(13)),
                  child: Text(
                    'Pessenger',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  height: 120,
                  width: 120,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
