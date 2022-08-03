import 'package:flutter/material.dart';
import 'package:xtendlyweb/responsive/responsive_layout.dart';
import 'package:xtendlyweb/screens/desktopBody.dart';
import 'package:xtendlyweb/screens/mobileBody.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'xtendly Web',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const Responsivelayout(mobileBody: MobileBody(), desktopBody: DesktopBody()),
    );
  }
}
