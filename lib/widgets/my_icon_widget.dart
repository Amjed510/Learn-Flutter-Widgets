import 'package:flutter/material.dart';

class MyIconWidget extends StatefulWidget {
  const MyIconWidget({super.key});

  @override
  State<MyIconWidget> createState() => _MyIconWidgetState();
}

class _MyIconWidgetState extends State<MyIconWidget> {
  bool isSelected = false;
  bool doubletap = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      onDoubleTap: () {
        setState(() {
          doubletap = !doubletap;
        });
      },
      child: Icon(
        doubletap ? Icons.message_outlined : Icons.apps_outage_outlined,
        size: 60,
        color: isSelected ? Colors.blue : Colors.grey,
      ),
    );
  }
}
