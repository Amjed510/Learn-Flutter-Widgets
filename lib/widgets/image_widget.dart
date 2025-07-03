import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  const CustomImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    showSnakbar(String x) {
      var snakbart = SnackBar(content: Text('you click $x'));
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(snakbart);
    }

    return Ink(
      width: double.infinity,
      height: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage("assets/images/m.webp"),
          fit: BoxFit.fill,
        ),
      ),
      child: InkWell(
        onTap: () {
          showSnakbar("onTap");
        },
        onDoubleTap: () {
          showSnakbar("onDoubleTap");
        },
        onLongPress: () {
          showSnakbar("onLongPress");
        },
      ),
    );
  }
}
