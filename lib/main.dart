import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            final condition = BlocProvider.of<GetWeatherCubit>(context)
                .weatherModel
                ?.weatherCondition;
            return MaterialApp(
              theme:
                  ThemeData(primarySwatch: getThemeColor(condition: condition)),
              debugShowCheckedModeBanner: false,
              home: const HomeView(),
            );
          },
        );
      }),
    );
  }

  MaterialColor getThemeColor({required String? condition}) {
    if (condition == null) {
      return Colors.blue;
    }
    switch (condition.toLowerCase()) {
      case 'sunny':
        return Colors.amber;
      case 'clear':
        return Colors.blue;
      case 'partly cloudy':
        return Colors.blueGrey;
      case 'cloudy':
        return Colors.grey;
      case 'overcast':
        return Colors.blueGrey;
      case 'mist':
        return Colors.lightBlue;
      case 'patchy rain possible':
        return Colors.indigo;
      case 'patchy snow possible':
        return Colors.grey;
      case 'patchy sleet possible':
        return Colors.teal;
      case 'patchy freezing drizzle possible':
        return Colors.cyan;
      case 'thundery outbreaks possible':
        return Colors.deepPurple;
      case 'blowing snow':
        return Colors.grey;
      case 'blizzard':
        return Colors.grey;
      case 'fog':
        return Colors.grey;
      case 'freezing fog':
        return Colors.cyan;
      case 'patchy light drizzle':
        return Colors.lightBlue;
      case 'light drizzle':
        return Colors.blueGrey;
      case 'freezing drizzle':
        return Colors.teal;
      case 'heavy freezing drizzle':
        return Colors.teal;
      case 'patchy light rain':
        return Colors.indigo;
      case 'light rain':
        return Colors.blue;
      case 'moderate rain at times':
        return Colors.blue;
      case 'moderate rain':
        return Colors.blue;
      case 'heavy rain at times':
        return Colors.blue;
      case 'heavy rain':
        return Colors.blue;
      case 'light freezing rain':
        return Colors.cyan;
      case 'moderate or heavy freezing rain':
        return Colors.teal;
      case 'light sleet':
        return Colors.teal;
      case 'moderate or heavy sleet':
        return Colors.teal;
      case 'patchy light snow':
        return Colors.grey;
      case 'light snow':
        return Colors.grey;
      case 'patchy moderate snow':
        return Colors.grey;
      case 'moderate snow':
        return Colors.grey;
      case 'patchy heavy snow':
        return Colors.grey;
      case 'heavy snow':
        return Colors.grey;
      case 'ice pellets':
        return Colors.cyan;
      case 'light rain shower':
        return Colors.blue;
      case 'moderate or heavy rain shower':
        return Colors.indigo;
      case 'torrential rain shower':
        return Colors.indigo;
      case 'light sleet showers':
        return Colors.teal;
      case 'moderate or heavy sleet showers':
        return Colors.teal;
      case 'light snow showers':
        return Colors.grey;
      case 'moderate or heavy snow showers':
        return Colors.blueGrey;
      case 'light showers of ice pellets':
        return Colors.cyan;
      case 'moderate or heavy showers of ice pellets':
        return Colors.cyan;
      case 'patchy light rain with thunder':
        return Colors.deepPurple;
      case 'moderate or heavy rain with thunder':
        return Colors.deepPurple;
      case 'patchy light snow with thunder':
        return Colors.deepPurple;
      case 'moderate or heavy snow with thunder':
        return Colors.deepPurple;
      default:
        return Colors.blue;
    }
  }
}
