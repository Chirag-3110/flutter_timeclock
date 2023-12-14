import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map locationData = {};
  @override
  Widget build(BuildContext context) {
    locationData = locationData.isNotEmpty
        ? locationData
        : ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    String bgImage = locationData['isDayTime'] ? 'day.jpg' : 'night.jpg';
    Color topBarColor = locationData['isDayTime']
        ? const Color.fromARGB(255, 1, 61, 109)
        : Colors.black;
    return SafeArea(
      child: Scaffold(
          backgroundColor: topBarColor,
          appBar: AppBar(
            title: const Text('World Time Clock '),
            backgroundColor: topBarColor,
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Assets/$bgImage'), fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton.icon(
                        icon: const Icon(
                          Icons.edit_location,
                          color: Colors.white,
                        ),
                        label: const Text(
                          "Navigate To Location",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                          dynamic result =
                              await Navigator.pushNamed(context, '/location');
                          setState(() {
                            locationData = {
                              'location': result['location'],
                              'time': result['time'],
                              'isDayTime': result['isDayTime']
                            };
                          });
                        },
                        // child: const Text('Navigate To Location')
                      ),
                    ],
                  ),
                  Text(
                    locationData['location'],
                    style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    locationData['time'],
                    style: const TextStyle(
                        color: Color.fromARGB(255, 224, 224, 224),
                        fontWeight: FontWeight.w700,
                        fontSize: 60),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
