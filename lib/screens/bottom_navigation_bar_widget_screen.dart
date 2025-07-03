import 'package:flutter/material.dart';
import 'package:tebale_app/widgets/custom_appbar.dart';

class BottomNavigationBarWidgetScreen extends StatefulWidget {
  const BottomNavigationBarWidgetScreen({super.key});

  @override
  State<BottomNavigationBarWidgetScreen> createState() =>
      _BottomNavigationBarWidgetScreenState();
}

class _BottomNavigationBarWidgetScreenState
    extends State<BottomNavigationBarWidgetScreen> {
  int _selectedIndex = 0;

  void onTabSelected(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  List<Widget> myIcon = [
    Icon(Icons.home_outlined, size: 80, color: Colors.lightBlue),
    Icon(Icons.card_travel_outlined, size: 80, color: Colors.lightBlue),
    Icon(Icons.settings_outlined, size: 80, color: Colors.lightBlue),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "bottomNavigationBar"),

      body: Center(child: myIcon.elementAt(_selectedIndex)),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Setting",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: onTabSelected,
      ),
    );
  }
}
