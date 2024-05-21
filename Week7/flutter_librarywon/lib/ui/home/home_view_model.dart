import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_librarywon/data/services/weather_service.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HomeViewModel extends ChangeNotifier {
  final WeatherService _weatherService;

  HomeViewModel({WeatherService? weatherService})
      : _weatherService = weatherService ?? WeatherService(_createDio());

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

  static Dio _createDio() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
    ));
    return dio;
  }
}
