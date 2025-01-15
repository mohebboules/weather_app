class WeatherModel {
  final String cityName;
  final DateTime date;
  final String? image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherCondition;

  WeatherModel({
    required this.date,
    required this.image,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherCondition,
    required this.cityName,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      date: DateTime.parse(json['current']['last_updated']),
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherCondition: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
      cityName: json['location']['name'],
    );
  }

  String imageFetch() {
    if (image == null) {
      return "https://archive.org/download/placeholder-image/placeholder-image.jpg";
    } else if (image!.contains("https:")) {
      return image!;
    } else {
      return "https:$image";
    }
  }
}
