import 'package:weather/weather.dart';
import 'package:weathy/weather_api.dart';

class Backend {
  Backend();

  WeatherFactory wf = new WeatherFactory(WeatherAPI.getAPIKey());

  Future<CurrentWeather> getCurrentWeather() async {
    Weather response = await wf.currentWeatherByCityName("cologne");

    final CurrentWeather currWeather = CurrentWeather(
        location: "cologne",
        celcius: response.temperature.celsius,
        weather: response.weatherMain);

    return currWeather;
  }
}

class CurrentWeather {
  final String location;
  final double celcius;
  final String weather;

  const CurrentWeather({this.location, this.celcius, this.weather});
}
