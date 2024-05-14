import 'package:dio/dio.dart';
import 'package:flutter_librarywon/data/models/weather_response.dart';
import 'package:retrofit/retrofit.dart';

part 'weather_service.g.dart';

@RestApi(baseUrl: "https://api.openweathermap.org/data/2.5/")
abstract class WeatherService {
  factory WeatherService(Dio dio, {String baseUrl}) = _WeatherService;

  @GET("weather")
  Future<WeatherResponse> fetchWeather(
      @Query("q") String cityName, @Query("appid") String apiKey);
}

final weatherService = WeatherService(Dio());
