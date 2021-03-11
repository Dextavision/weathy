import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weathy/weather_api.dart';

class Backend {
  Backend();

  WeatherFactory wf = new WeatherFactory(WeatherAPI.getAPIKey());

  Future<CurrentWeather> getCurrentWeather() async {
    Weather response = await wf.currentWeatherByCityName("cologne");

    final CurrentWeather currWeather = CurrentWeather(
      location: "Cologne",
      celcius: response.temperature.celsius,
      weather: response.weatherMain,
      windSpeed: response.windSpeed,
      minTemp: response.tempMin.celsius,
      maxTemp: response.tempMax.celsius,
    );
    return currWeather;
  }

  Future<List<ForecastWeather>> getForecastWeather() async {
    List<Weather> response = await wf.fiveDayForecastByCityName("cologne");

    final List<ForecastWeather> forecastWeather = response
        .map(
          (day) => ForecastWeather(
            celcius: day.temperature.celsius,
            weather: day.weatherMain,
          ),
        )
        .toList();

    return forecastWeather;
  }
}

class CurrentWeather {
  final String location;
  final double celcius;
  final String weather;
  final double windSpeed;
  final double minTemp;
  final double maxTemp;

  const CurrentWeather({
    this.location,
    this.celcius,
    this.weather,
    this.windSpeed,
    this.minTemp,
    this.maxTemp,
  });
}

class ForecastWeather {
  final double celcius;
  final String weather;

  const ForecastWeather({this.celcius, this.weather});
}

class WeatherIcon {
  static IconData transformAndGetIcon(String weather) {
    switch (weather) {
      case "Clear":
        return WeatherIcons.day_sunny;
        break;
      case "Rain":
        return WeatherIcons.rain;
        break;
      case "Clouds":
        return WeatherIcons.cloudy;
        break;
      case "Snow":
        return WeatherIcons.snow;
        break;
      case "Extreme":
        return WeatherIcons.hurricane_warning;
        break;
      default:
        return WeatherIcons.cloud;
    }
  }
}
