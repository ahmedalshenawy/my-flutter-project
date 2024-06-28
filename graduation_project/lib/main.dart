import 'package:flutter/material.dart';
import 'package:graduation_project/pages/SplashScreen.dart';
import 'package:graduation_project/pages/compare/CPUsCompare.dart';

void main() {
  runApp(setup_master());
}

class setup_master extends StatelessWidget {
  const setup_master({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: SelectPage(),
      // home: CPUsCompare(),
    );
  }
}
