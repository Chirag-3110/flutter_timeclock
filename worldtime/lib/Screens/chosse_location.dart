import 'package:flutter/material.dart';
import 'package:worldtime/ApiClasses/WorldTime.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  int value = 0;

  List<WorldTime> locations = [
    WorldTime(location: "London", uri: 'Europe/London'),
    WorldTime(location: "India", uri: 'Asia/Kolkata'),
    WorldTime(location: "USA", uri: 'America/New_York'),
    WorldTime(location: "Berlin", uri: 'Europe/berlin'),
    WorldTime(location: "Chicago", uri: 'America/Chicago'),
  ];

//can use this as useEffect of react
  @override
  void initState() {
    super.initState();
  }

  void getNewTime(index) async {
    WorldTime instance = locations[index];
    await instance.getData();
    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
      'isDayTime': instance.isDayTime
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Choose Location'),
              backgroundColor: const Color.fromARGB(255, 195, 74, 135),
              centerTitle: true,
            ),
            body: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      getNewTime(index);
                    },
                    title: Text(locations[index].location),
                  ),
                );
              },
              itemCount: locations.length,
            )));
  }
}
