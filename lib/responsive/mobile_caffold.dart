import 'package:flutter/material.dart';
import 'package:responsive_desktop_ui_design/constants.dart';
import 'package:responsive_desktop_ui_design/util/my_box.dart';
import 'package:responsive_desktop_ui_design/util/my_tile.dart';

class MobileCaffold extends StatefulWidget {
  const MobileCaffold({super.key});

  @override
  State<MobileCaffold> createState() => _MobileCaffoldState();
}

class _MobileCaffoldState extends State<MobileCaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer,
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                ),
                itemBuilder: (context, intex) {
                  return MyBox();
                },
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return MyTile();
              },
            ),
          ],
        ),
      ),
    );
  }
}
