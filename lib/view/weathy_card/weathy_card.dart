import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weathy/shared/constants.dart';

final Color cardColor = primaryColor;
const TextStyle cardTextStyle = TextStyle(color: Colors.white);

class WeathyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50.0, 0, 50.0, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: cardColor,
          boxShadow: [
            BoxShadow(
              color: accentColor,
              blurRadius: 1,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
                  child: Container(
                    child: Text(
                      'Erftstadt',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade700),
                        borderRadius: BorderRadius.circular(3.0)),
                    padding: EdgeInsets.all(3.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10.0, 10.0, 0),
                  child: Container(
                    child: Text(
                      DateTime.now().hour.toString() +
                          ":" +
                          DateTime.now().minute.toString(),
                      style: cardTextStyle,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BoxedIcon(
                        WeatherIcons.day_sunny,
                        color: Colors.yellow,
                        size: 130.0,
                      ),
                      Text(
                        'Sunny',
                      )
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          BoxedIcon(
                            WeatherIcons.wind,
                            color: Colors.grey.shade700,
                          ),
                          Text(
                            '10 km/h',
                            style: cardTextStyle,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          BoxedIcon(
                            WeatherIcons.day_sunny,
                            color: Colors.grey.shade700,
                          ),
                          Text(
                            '16 h',
                            style: cardTextStyle,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          BoxedIcon(
                            WeatherIcons.raindrops,
                            color: Colors.grey.shade700,
                          ),
                          Text(
                            '0 %',
                            style: cardTextStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10.0, 10.0, 0),
                      child: Container(
                        child: Text(
                          '16°',
                          style: TextStyle(fontSize: 50.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
