import 'package:weather/weather.dart';
import 'package:weathy/weather_api.dart';

class Backend {
  Backend();

  WeatherFactory wf = new WeatherFactory(WeatherAPI.getAPIKey());

  Future<CurrentWeather> getCurrentWeather() async {
    Weather response = await wf.currentWeatherByCityName("erftstadt");

    final CurrentWeather currWeather = CurrentWeather(
      location: "Erftstadt",
      celcius: response.temperature.celsius,
      weather: response.weatherMain,
      windSpeed: response.windSpeed,
      minTemp: response.tempMin.celsius,
      maxTemp: response.tempMax.celsius,
    );
    return currWeather;
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
