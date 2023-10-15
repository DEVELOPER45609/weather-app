class Weather {
  var location;
  var temperature;
  var weatherCondition;
  var humidity;
  var windSpeed;
  var pressure;
  var icon;
  var uv;
  var cloud;
  var winddirection;

  Weather({
    required this.location,
    required this.temperature,
    required this.weatherCondition,
    required this.humidity,
    required this.windSpeed,
    required this.pressure,
    required this.icon,
    required this.uv,
    required this.cloud,
    required this.winddirection,
  });
  Weather.fromJson(Map<String, dynamic> json) {
    location = json['location']['name'];
    icon = json['current']['condition']['icon'];
    weatherCondition = json['current']['condition']['text'];
    temperature = json['current']['temp_c'];
    windSpeed = json['current']['wind_kph'];
    humidity = json['current']['humidity'];
    pressure = json['current']['pressure_mb'];
    uv = json['current']['uv'];
    cloud = json['current']['cloud'];
    winddirection = json['current']['wind_dir'];
  }
}
