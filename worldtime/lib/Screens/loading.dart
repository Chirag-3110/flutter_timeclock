import 'package:flutter/material.dart';
import 'package:worldtime/ApiClasses/WorldTime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setTimeData() async {
    WorldTime worldtime = WorldTime(location: 'India', uri: 'Asia/Kolkata');
    await worldtime.getData();

    // Navigator.pushReplacementNamed(context, '/home', arguments: {
    //   'location': worldtime.location,
    //   'time': worldtime.time,
    //   'isDayTime': worldtime.isDayTime
    // });
  }

  @override
  void initState() {
    super.initState();
    setTimeData();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 73, 140, 255),
            body: Center(
                child: SpinKitRotatingCircle(
              color: Colors.white,
              size: 50.0,
            ))));
  }
}
