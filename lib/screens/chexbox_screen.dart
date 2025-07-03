import 'package:flutter/material.dart';
import 'package:tebale_app/widgets/custom_appbar.dart';

class ChexboxScreen extends StatefulWidget {
  const ChexboxScreen({super.key});

  @override
  State<ChexboxScreen> createState() => _ChexboxScreenState();
}

class _ChexboxScreenState extends State<ChexboxScreen> {
  bool mycheck1 = false;
  bool mycheck2 = false;
  bool mycheck3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Check Box"),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text("إختر البلد التي ترغب بها من الخيارات التالية : "),
          SizedBox(height: 15),

          CheckboxListTile(
            title: Text("السفر الى لندن  "),
            subtitle: Text("تخفيض 10% من رسوم التذاكر"),
            value: mycheck1,
            onChanged: (bool? val) {
              setState(() {
                mycheck1 = val!;
              });
            },
          ),

          SizedBox(height: 15),

          CheckboxListTile(
            title: Text("تركيا "),
            subtitle: Text("احجز الان واحصل على سكن اقامة لمدة شهر"),
            value: mycheck2,
            onChanged: (bool? val) {
              setState(() {
                mycheck2 = val!;
              });
            },
          ),

          SizedBox(height: 15),

          CheckboxListTile(
            title: Text("كندا  "),
            subtitle: Text("التذاكر محدودة"),
            value: mycheck2,
            onChanged: (bool? val) {
              setState(() {
                mycheck2 = val!;
              });
            },
          ),
        ],
      ),
    );
  }
}
