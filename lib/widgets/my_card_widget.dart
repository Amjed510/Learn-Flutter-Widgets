import 'package:flutter/material.dart';

class MyCardWidget extends StatefulWidget {
  const MyCardWidget({super.key});

  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}

class _MyCardWidgetState extends State<MyCardWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child:  Card(
      child: SizedBox(height: 300, width: double.infinity),
      color: isSelected? Colors.lightBlueAccent :  Colors.blue,
    ),
    );
  }
}
