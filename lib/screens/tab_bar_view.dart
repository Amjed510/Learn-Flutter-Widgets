import 'package:flutter/material.dart';

class TabBarViewScreen extends StatefulWidget {
  const TabBarViewScreen({super.key});

  @override
  State<TabBarViewScreen> createState() => _TabBarViewScreenState();
}

class _TabBarViewScreenState extends State<TabBarViewScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Tab Bar")),
          bottom: TabBar(
            dividerColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.person), text: "الملف الشخصي"),
              Tab(icon: Icon(Icons.settings), text: "الإعدادات"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text("مرحباً بك في الملف الشخصي"),
                  SizedBox(height: 10),
                  Icon(Icons.person),
                ],
              ),
            ),

            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("مرحباً بك في الاعدادات"),
                  SizedBox(height: 10),
                  Icon(Icons.settings),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
