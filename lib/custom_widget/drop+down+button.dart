import 'package:first/const/const_list.dart';
import 'package:flutter/material.dart';


class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String ? currentValue;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DropdownButton<String>(
        elevation: 0,
        borderRadius: BorderRadius.circular(10),
        isExpanded: true,
        value: currentValue,
        items: List.generate(dropDownList.length, (index){
          return DropdownMenuItem<String>(
              value: dropDownList[index],
              child: Text(dropDownList[index]));
        }),
        onChanged: (newValue){
          currentValue = newValue;
          setState(() {
          });
        },
      ),
    );
  }
}


class Dropdowntwo extends StatefulWidget {
  const Dropdowntwo({super.key});

  @override
  State<Dropdowntwo> createState() => _DropdowntwoState();
}

class _DropdowntwoState extends State<Dropdowntwo> {
  String ? currentValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DropdownButton<String>(
        elevation: 0,
        borderRadius: BorderRadius.circular(10),
        isExpanded: true,
        value: currentValue,
        items: List.generate(dropdowntwo.length, (index){
          return DropdownMenuItem<String>(
              value: dropdowntwo[index],
              child: Text(dropdowntwo[index]));
        }),
        onChanged: (newValue){
          currentValue = newValue;
          setState(() {
          });
        },
      ),
    );;
  }
}


class Dropdownthree extends StatefulWidget {
  const Dropdownthree({super.key});

  @override
  State<Dropdownthree> createState() => _DropdownthreeState();
}

class _DropdownthreeState extends State<Dropdownthree> {
  String ? currentValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DropdownButton<String>(
        elevation: 0,
        borderRadius: BorderRadius.circular(10),
        isExpanded: true,
        value: currentValue,
        items: List.generate(dropdownthree.length, (index){
          return DropdownMenuItem<String>(
              value: dropdownthree[index],
              child: Text(dropdownthree[index]));
        }),
        onChanged: (newValue){
          currentValue = newValue;
          setState(() {
          });
        },
      ),
    );;
  }
}

class Dropdownfour extends StatefulWidget {
  const Dropdownfour({super.key});

  @override
  State<Dropdownfour> createState() => _DropdownfourState();
}

class _DropdownfourState extends State<Dropdownfour> {
  String ? currentValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DropdownButton<String>(
        elevation: 0,
        borderRadius: BorderRadius.circular(10),
        isExpanded: true,
        value: currentValue,
        items: List.generate(dropdownfour.length, (index){
          return DropdownMenuItem<String>(
              value: dropdownfour[index],
              child: Text(dropdownfour[index]));
        }),
        onChanged: (newValue){
          currentValue = newValue;
          setState(() {
          });
        },
      ),
    );
  }
}

class Dropdownfive extends StatefulWidget {
  const Dropdownfive({super.key});

  @override
  State<Dropdownfive> createState() => _DropdownfiveState();
}

class _DropdownfiveState extends State<Dropdownfive> {
  String ? currentValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DropdownButton<String>(
        elevation: 0,
        borderRadius: BorderRadius.circular(10),
        isExpanded: true,
        value: currentValue,
        items: List.generate(dropdownfive.length, (index){
          return DropdownMenuItem<String>(
              value: dropdownfive[index],
              child: Text(dropdownfive[index]));
        }),
        onChanged: (newValue){
          currentValue = newValue;
          setState(() {
          });
        },
      ),
    );
  }
}

class Dropdownsix extends StatefulWidget {
  const Dropdownsix({super.key});

  @override
  State<Dropdownsix> createState() => _DropdownsixState();
}

class _DropdownsixState extends State<Dropdownsix> {
  String ? currentValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DropdownButton<String>(
        elevation: 0,
        borderRadius: BorderRadius.circular(10),
        isExpanded: true,
        value: currentValue,
        items: List.generate(dropdownsix.length, (index){
          return DropdownMenuItem<String>(
              value: dropdownsix[index],
              child: Text(dropdownsix[index]));
        }),
        onChanged: (newValue){
          currentValue = newValue;
          setState(() {
          });
        },
      ),
    );
  }
}

class Dropdownseven extends StatefulWidget {
  const Dropdownseven({super.key});

  @override
  State<Dropdownseven> createState() => _DropdownsevenState();
}

class _DropdownsevenState extends State<Dropdownseven> {
  String ? currentValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DropdownButton<String>(
        elevation: 0,
        borderRadius: BorderRadius.circular(10),
        isExpanded: true,
        value: currentValue,
        items: List.generate(dropdownseven.length, (index){
          return DropdownMenuItem<String>(
              value: dropdownseven[index],
              child: Text(dropdownseven[index]));
        }),
        onChanged: (newValue){
          currentValue = newValue;
          setState(() {
          });
        },
      ),
    );;
  }
}




