import 'package:flutter/material.dart';
import 'package:tebale_app/widgets/custom_appbar.dart';

class MyTextfieldScreen extends StatefulWidget {
  const MyTextfieldScreen({super.key});

  @override
  State<MyTextfieldScreen> createState() => _MyTextfieldScreenState();
}

class _MyTextfieldScreenState extends State<MyTextfieldScreen> {
  TextEditingController textEditingController = TextEditingController();
  String displaytext = "my name";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "TextField"),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                prefix: Icon(Icons.person),
                hintText: "أدخل اسمك ",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              displaytext,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  displaytext = textEditingController.text;
                });
              },
              child: Text("Click Here"),
            ),
          ],
        ),
      ),
    );
  }
}
