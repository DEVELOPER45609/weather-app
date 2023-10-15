import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/weatherModel.dart';

class WeahterData {
  Future<Weather> getData(var latitude, var longitude) async {
    var uriCall = Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=949626e09740454b856182639231410&q=$latitude,$longitude&aqi=no');
    var response = await http.get(uriCall);
    var body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}
