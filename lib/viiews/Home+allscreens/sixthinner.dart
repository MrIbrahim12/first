import 'package:flutter/material.dart';

import '../../custom_widget/Custom_container.dart';


class sixth extends StatefulWidget {
  const sixth({super.key});

  @override
  State<sixth> createState() => _sixthState();
}

class _sixthState extends State<sixth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: List.generate(8, (index) {
              return imagecontainer();
            })),
      ),
    );
  }
}
