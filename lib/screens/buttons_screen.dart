import 'package:flutter/material.dart';
import 'package:tebale_app/widgets/custom_appbar.dart';

class ButtonsScreen extends StatefulWidget {
  const ButtonsScreen({super.key});

  @override
  State<ButtonsScreen> createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "عرض Buttons"),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 15),
              // show ElevatedButton
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("You Click Elevated Button")),
                  );
                },
                child: Text("Click ElevatedButton"),
              ),

              SizedBox(height: 15),
              // show TextButton
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("You Click TextButton")),
                  );
                },
                child: Text("Click TextButton"),
              ),

              SizedBox(height: 15),
              // show OutlinedButton
              OutlinedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("You Click Outlined Button")),
                  );
                },
                child: Text("Click OutlinedButton"),
              ),

              SizedBox(height: 15),
              // show FilledButton
              FilledButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("YOu Click Filled Button")),
                  );
                },
                child: Text("Click FilledButton"),
              ),

              SizedBox(height: 15),
              // show FilledButton
              FilledButton.tonal(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("You Click FilledButton.tonal")),
                  );
                },
                child: Text("Click FilledButton tonal"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
