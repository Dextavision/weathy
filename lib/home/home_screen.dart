import 'package:flutter/material.dart';
import 'package:weathy/weathy_card/weathy_card.dart';

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
            child: Text('Header Geo Location'),
          ),
          Expanded(
            child: WeathyCard(),
          ),
          Expanded(child: Text('Forecast')),
        ],
      ),
    );
  }
}
