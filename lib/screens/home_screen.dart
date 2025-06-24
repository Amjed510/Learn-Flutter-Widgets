import 'package:flutter/material.dart';
import 'package:tebale_app/screens/images_screen.dart';
import 'package:tebale_app/screens/radio_screen.dart';
import 'package:tebale_app/screens/table_screen.dart';
import 'package:tebale_app/widgets/custom_appbar.dart';
import 'package:tebale_app/widgets/custom_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Widgets"),

      body: ListView(
        children: [
          CastomCard(titleText: "Table Widget", page: TableScreen()),
          CastomCard(titleText: "Image Widget", page: ImageScreen()),
            CastomCard(titleText: "Radio Widget", page: RadioScreen()),
        ],
      ),
    );
  }
}
