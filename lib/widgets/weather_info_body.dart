import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Alexandria",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          const Text("Updated at 23:46"),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/cloudy.png"),
              const Text(
                "17",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Column(
                children: [Text("MaxTemp: 24"), Text("MinTemp: 16")],
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Light rain",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
