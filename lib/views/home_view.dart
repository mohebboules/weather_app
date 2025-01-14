import 'package:flutter/material.dart';
import 'package:weather_app/widgets/weather_info_body.dart';
// import 'package:weather_app/widgets/no_weather.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Text(
          "Weather App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      // body: NoWeatherBody(),
      body: WeatherInfoBody(),
    );
  }
}
