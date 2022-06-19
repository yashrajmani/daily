class Weather {
   final String? name;
  final String? country;
  final String? icon;
  final String? description;
  final String? main;


  final double temp;
  final double feel;
  final double clouds;

  final double pressure;
  final double windspeed;
  final double humidity;

  Weather({
     required this.name,
    required this.country,
    required this.icon,
    required this.description,
    required this.main,
    required this.temp,
    required this.feel,
    required this.clouds,
    required this.pressure,
    required this.windspeed,
    required this.humidity,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      name: json['name'] ?? "--",

      country: json['sys']["country"] ?? "--",
      icon: json['weather'][0]['icon'] ?? "--",
      description: json['weather'][0]['description'] ?? "--",
      main: json['weather'][0]['main'] ?? "--",
      temp: json['main']['temp'].toDouble() ?? "--",
      feel: json['main']['feels_like'].toDouble() ?? "--",
      clouds: json['clouds']['all'].toDouble() ?? "--",
      pressure: json['main']['pressure'].toDouble() ?? "--",
      windspeed: json['wind']['speed'].toDouble() ?? "--",
      humidity: json['main']['humidity'].toDouble() ?? "--",
    );
  }
}
