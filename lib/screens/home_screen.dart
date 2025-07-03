import 'package:flutter/material.dart';
import 'package:tebale_app/screens/bottom_navigation_bar_widget_screen.dart';
import 'package:tebale_app/screens/buttons_screen.dart';
import 'package:tebale_app/screens/chexbox_screen.dart';
import 'package:tebale_app/screens/drawer_widget_screen.dart';
import 'package:tebale_app/screens/gesture_getector_screen.dart';

import 'package:tebale_app/screens/images_screen.dart';
import 'package:tebale_app/screens/inkwell_screen.dart';
import 'package:tebale_app/screens/my_textfield_screen.dart';
import 'package:tebale_app/screens/radio_screen.dart';
import 'package:tebale_app/screens/tab_bar_view.dart';
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
          CastomCard(titleText: "check box Widget", page: ChexboxScreen()),
          CastomCard(titleText: "Buttons Widget", page: ButtonsScreen()),
          CastomCard(titleText: "TabBar Widget", page: TabBarViewScreen()),
          CastomCard(titleText: "Inkwell Widget", page: InkwellScreen()),
          CastomCard(titleText: "GestureWidget", page: GestureGetectorScreen()),
          CastomCard(titleText: "TextField Widget", page: MyTextfieldScreen()),
          CastomCard(titleText: " Drawer Widget", page: DrawerWidgetScreen()),
           CastomCard(titleText: "BottomNavigationBar Widget", page: BottomNavigationBarWidgetScreen()),
        ],
      ),
    );
  }
}
