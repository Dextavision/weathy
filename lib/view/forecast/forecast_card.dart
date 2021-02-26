import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weathy/shared/constants.dart';

class ForecastCard extends StatelessWidget {
  final IconData weatherIcon = Icons.ac_unit_outlined;
  final String weatherTitle = "";
  final int degree = 0;

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
              WeatherIcons.day_rain,
              color: Colors.yellow,
              size: 50.0,
            ),
            Text(
              'Sunny',
            ),
            Text(
              '24°',
            ),
          ],
        ),
      ),
    );
  }
}
