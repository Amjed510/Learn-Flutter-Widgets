import 'package:flutter/material.dart';
import 'package:tebale_app/widgets/custom_appbar.dart';

class DrawerWidgetScreen extends StatefulWidget {
  const DrawerWidgetScreen({super.key});

  @override
  State<DrawerWidgetScreen> createState() => _DrawerWidgetScreenState();
}

class _DrawerWidgetScreenState extends State<DrawerWidgetScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Drawer"),

      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Amjed Ahomidy"),
              accountEmail: Text("amjedalhomidy12@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: Text("AM"),
              ),
            ),

            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home_outlined),
              onTap: () {},
            ),

            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person_2_outlined),
              onTap: () {},
            ),

            ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.settings_outlined),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: ListTile(
          title: Text("Exit"),
          leading: Icon(Icons.exit_to_app),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
