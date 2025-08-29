import 'package:flutter/material.dart';
import 'package:responsive_desktop_ui_design/responsive/desktop_scaffold.dart';
import 'package:responsive_desktop_ui_design/responsive/mobile_caffold.dart';
import 'package:responsive_desktop_ui_design/responsive/responsive_layout.dart';
import 'package:responsive_desktop_ui_design/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLaout(
        mobileScaffold: const MobileCaffold(),
        tabletScaffold: const TabletScaffold(),
        desktopScaffold: const DesktopScaffold(),
      ),
    );
  }
}
