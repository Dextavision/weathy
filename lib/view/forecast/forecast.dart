import 'package:flutter/material.dart';
import 'package:weathy/app/backend.dart';
import 'package:weathy/view/forecast/forecast_card.dart';

class Forecast extends StatelessWidget {
  final List<ForecastWeather> forecastWeather;

  Forecast({@required this.forecastWeather});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: <Expanded>[
          Expanded(
            child: ForecastCard(
              forecastWeather: this.forecastWeather[8],
            ),
          ),
          Expanded(
            child: ForecastCard(
              forecastWeather: this.forecastWeather[16],
            ),
          ),
          Expanded(
            child: ForecastCard(
              forecastWeather: this.forecastWeather[24],
            ),
          ),
        ],
      ),
    );
  }
}
