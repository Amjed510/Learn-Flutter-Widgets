import 'package:flutter/material.dart';
import 'package:tebale_app/widgets/custom_appbar.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "عرض الصور"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Image.asset("assets/images/bird.webp"),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Image(image: AssetImage('assets/images/m.webp')),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Image.network(
                "https://www.searchenginejournal.com/wp-content/uploads/2018/10/How-to-Boost-Your-Images%E2%80%99-Visibility-on-Google-Images.png",
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Image(
                image: NetworkImage(
                  "https://www.searchenginejournal.com/wp-content/uploads/2018/10/How-to-Boost-Your-Images%E2%80%99-Visibility-on-Google-Images.png",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
