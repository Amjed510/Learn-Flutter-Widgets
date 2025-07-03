import 'package:flutter/material.dart';

class CustomIconWidget extends StatelessWidget {
  const CustomIconWidget({super.key});

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
        child: Icon(Icons.ac_unit_outlined, size: 90),
      ),
    );
  }
}
