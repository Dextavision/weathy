import 'package:flutter/material.dart';
import 'package:weathy/view/home/home_header.dart';
import 'package:weathy/view/weathy_card/weathy_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weathy'),
      ),
      body: Column(
        children: [
          Expanded(
            child: HomeHeader(),
          ),
          Expanded(
            flex: 2,
            child: WeathyCard(),
          ),
          Expanded(child: Text('Forecast')),
        ],
      ),
    );
  }
}
