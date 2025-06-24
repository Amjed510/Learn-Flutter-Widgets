import 'package:flutter/material.dart';
import 'package:tebale_app/widgets/custom_appbar.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

enum Choose { option1, option2 }

class _RadioScreenState extends State<RadioScreen> {
  Choose? _selectedOption = Choose.option1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "عرض زر Radio"),
      body: ListView(
        children: [
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),

            child: Text("عنوان  1"),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  title: const Text("الخيار 1"),
                  leading: Radio<Choose>(
                    value: Choose.option1,
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text("الخيار 2"),
                  leading: Radio<Choose>(
                    value: Choose.option2,
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),

            child: Text("عنوان  2"),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  title: const Text("الخيار 1"),
                  leading: Radio<Choose>(
                    value: Choose.option1,
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text("الخيار 2"),
                  leading: Radio<Choose>(
                    value: Choose.option2,
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
