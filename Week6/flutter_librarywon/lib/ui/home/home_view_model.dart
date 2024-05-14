import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_librarywon/data/services/weather_service.dart';

class HomeViewModel extends ChangeNotifier {
  final WeatherService _weatherService;

  // Constructor
  HomeViewModel({WeatherService? weatherService})
      : _weatherService = weatherService ?? WeatherService(Dio());

  String? cityName;
  double? temperature;
  int? humidity;
  int? pressure;
  double? windSpeed;
  String? error;

  Future<void> fetchWeather(String cityName) async {
    const apiKey = "df54b40e7c614cb48107fac285e16b9a";
    try {
      var response = await _weatherService.fetchWeather(cityName, apiKey);
      this.cityName = cityName;
      temperature = _convertKelvinToCelsius(response.main.temp);
      humidity = response.main.humidity;
      pressure = response.main.pressure;
      windSpeed = response.wind.speed;
      notifyListeners();
    } catch (e) {
      error = e.toString();
      notifyListeners();
    }
  }

  double _convertKelvinToCelsius(double kelvin) {
    return kelvin - 273.15;
  }
}
