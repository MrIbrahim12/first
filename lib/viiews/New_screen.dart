import 'package:flutter/material.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({super.key});

  @override
  State<NextScreen> createState() => _Next_screenState();
}

class _Next_screenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Powerful',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 200,
            decoration: BoxDecoration(color: Colors.pink),
          )
        ],
      ),
    );
  }
}
