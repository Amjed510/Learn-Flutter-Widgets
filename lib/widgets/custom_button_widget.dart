import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    showSnakbar(String x) {
      var snakbart = SnackBar(content: Text('you click $x'));
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(snakbart);
    }

    return Material(
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
        borderRadius: BorderRadius.circular(50),
        highlightColor: Colors.deepOrange.withOpacity(0.4),
        splashColor: Colors.blue.withOpacity(0.5),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(7)),

          child: Text("my btn", style: TextStyle(fontSize: 26)),
        ),
      ),
    );
  }
}
