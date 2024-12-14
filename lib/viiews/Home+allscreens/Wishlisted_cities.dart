import 'package:first/custom_widget/Custom_container.dart';
import 'package:flutter/material.dart';

class fifthinner extends StatefulWidget {
  const fifthinner({super.key});

  @override
  State<fifthinner> createState() => _fifthinnerState();
}

class _fifthinnerState extends State<fifthinner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(5, (index){
          return imagecontainertwo();
        }),
      ),
    );
  }
}
