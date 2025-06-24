
import 'package:flutter/material.dart';

class CastomCard extends StatelessWidget {
  const CastomCard({super.key, required this.titleText, required this.page});
  final titleText;
  final Widget page;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      surfaceTintColor: Colors.blueGrey,
      borderOnForeground: false,
      margin: EdgeInsets.all(12),

      child: ListTile(
        title: Text(
          titleText,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.navigate_next_sharp, fill: 1.0),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }
}
