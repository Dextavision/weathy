import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weathy/app/backend.dart';
import 'package:weathy/app/theme.dart';
import 'package:weathy/view/home/home_screen.dart';

class Weathy extends StatelessWidget {
  final Backend backend;

  Weathy({@required this.backend});

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: backend,
      child: MaterialApp(
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        home: HomeScreen(),
      ),
    );
  }
}
