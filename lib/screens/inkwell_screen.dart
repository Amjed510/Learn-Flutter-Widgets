import 'package:flutter/material.dart';
import 'package:tebale_app/widgets/custom_appbar.dart';
import 'package:tebale_app/widgets/custom_button_widget.dart';
import 'package:tebale_app/widgets/custom_icon_widget.dart';
import 'package:tebale_app/widgets/image_widget.dart';

class InkwellScreen extends StatelessWidget {
  const InkwellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "InkWell"),

      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            CustomImageWidget(),
            CustomIconWidget(),
            CustomButtonWidget(),
          ],
        ),
      ),
    );
  }
}
