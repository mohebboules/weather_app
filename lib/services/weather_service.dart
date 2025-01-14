import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio = Dio();
  final String baseUrl = "http://api.weatherapi.com/v1";
  final String apiKey = "9c9d098950bb44c6ab5220124251401";

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    String url = "$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1";
    try {
      Response response = await dio.get(url);
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          "oops there was an error, try again later";
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception("oops there was an error, try again later");
    }
  }
}
