import 'package:flutter/material.dart';
import 'package:tebale_app/widgets/custom_appbar.dart';
import 'package:tebale_app/widgets/my_card_widget.dart';
import 'package:tebale_app/widgets/my_icon_widget.dart';

class GestureGetectorScreen extends StatefulWidget {
  const GestureGetectorScreen({super.key});

  @override
  State<GestureGetectorScreen> createState() => _GestureGetectorScreenState();
}

class _GestureGetectorScreenState extends State<GestureGetectorScreen> {
  @override
  Widget build(BuildContext context) {
    final hieght = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppbar(title: "Gesture Getector"),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.1,
          vertical: hieght * 0.1,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [MyCardWidget(), MyIconWidget()],
        ),
      ),
    );
  }
}
