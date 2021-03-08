import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weathy/app/backend.dart';
import 'package:weathy/shared/constants.dart';

class ForecastCard extends StatelessWidget {
  final ForecastWeather forecastWeather;

  ForecastCard({@required this.forecastWeather});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: primaryColor,
          boxShadow: [
            BoxShadow(
              color: accentColor,
              blurRadius: 1,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BoxedIcon(
              WeatherIcon.transformAndGetIcon(this.forecastWeather.weather),
              color: Colors.yellow,
              size: 50.0,
            ),
            Text(
              this.forecastWeather.weather,
            ),
            Text(
              this.forecastWeather.celcius.toStringAsFixed(0) + '°',
            ),
          ],
        ),
      ),
    );
  }
}
