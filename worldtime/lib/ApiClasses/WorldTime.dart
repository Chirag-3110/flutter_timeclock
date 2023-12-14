import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String time = '';
  String uri;
  String location;
  bool isDayTime = true;

  WorldTime({required this.location, required this.uri});

  Future<void> getData() async {
    try {
      var response =
          await http.get(Uri.parse('https://3237-103-170-153-72.in.ngrok.io/'));

      Map jsonData = jsonDecode(response.body);
      print(jsonData);
      // String datetime = jsonData['datetime'];
      // String offset = jsonData['utc_offset'].substring(1, 3);
      // DateTime now = DateTime.parse(datetime);
      // now = now.add(Duration(hours: int.parse(offset)));

      // isDayTime = now.hour > 6 && now.hour < 20 ? true : false;

      // time = DateFormat.jm().format(now);
    } catch (e) {
      time = "Invalid Time";
    }
  }
}
