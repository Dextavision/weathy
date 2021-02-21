import 'package:flutter/material.dart';
import 'package:weathy/app/theme.dart';
import 'package:weathy/view/home/home_screen.dart';

class Weathy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      home: HomeScreen(),
    );
  }
}
