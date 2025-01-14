import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Alexandria",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Text("Updated at 23:46"),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/images/cloudy.png"),
              Spacer(),
              Text(
                "17",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Column(
                children: [Text("MaxTemp: 24"), Text("MinTemp: 16")],
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Light rain",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
