import 'package:first/custom_widget/Custom_container.dart';
import 'package:flutter/material.dart';

class Profileinner extends StatefulWidget {
  const Profileinner({super.key});

  @override
  State<Profileinner> createState() => _ProfileinnerState();
}

class _ProfileinnerState extends State<Profileinner> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: List.generate(8, (index){
            return Profilecontainer();
          }),
        ),
      ),
    );
  }
}
