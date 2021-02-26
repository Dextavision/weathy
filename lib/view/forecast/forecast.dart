import 'package:flutter/material.dart';
import 'package:weathy/view/forecast/forecast_card.dart';

class Forecast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: <Expanded>[
          Expanded(child: ForecastCard()),
          Expanded(child: ForecastCard()),
          Expanded(child: ForecastCard()),
        ],
      ),
    );
  }
}
