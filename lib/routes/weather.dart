import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'package:news/components/weathercard.dart';
import 'package:news/models/weather_model.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  var lat, long;

  void getLocation() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    var lastlocation = await Geolocator.getLastKnownPosition();
    print("LAST LOCATION :$lastlocation");
    print("CURRENT LOCATION :$position");

    setState(() {
      lat = position.latitude;
      long = position.longitude;
    });
  }

  @override
  void initState() {
    super.initState();
    getLocation();
    // getWeather();
  }

  //WEATHER-------------------------------------------------------------------

  Future<Weather> getWeather() async {
    String key = '65a9898ec8f2befbf99af28b4d169e2c';
    var url =
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&units=metric&appid=$key';
    final response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      print("ALL OK FROM WEATHER API");
      print(jsonDecode(response.body));
      return Weather.fromJson(jsonDecode(response.body));
    } else {
      print("BAD REQUEST @ WEATHER API");
      throw ("NEWS API ERROR ");
    }
  }

  //------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getWeather(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done && lat != null) {
            Weather? weather = snapshot.data as Weather?;
            String? im = weather?.icon.toString();

            return Stack(
              children:[
                Container(
                  width: double.infinity,
                    child: Image.asset("assets/images/bg.jpg",fit: BoxFit.cover,)),
                Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: double.infinity,
                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.red,
                        color: Colors.purple,
                        shape: StadiumBorder(
                          side: BorderSide(color: Colors.purple),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.02,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.location_on_rounded,
                                      color: Colors.yellow,
                                      size: 25,
                                    ),
                                    onPressed: () {
                                      getLocation();
                                    },
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.02,
                                  ),
                                  Text(
                                    weather!.name.toString() +
                                        " : " +
                                        weather.country.toString(),
                                    // weather.country.toString(),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.005,
                                child: Divider(
                                  thickness: 2,
                                  color: Colors.yellow,
                                  endIndent: 30,
                                  indent: 30,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height * 0.02,
                                  ),
                                  Text(
                                    "Latitude : $lat",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.03,
                                  ),
                                  Text(
                                    "Longitude : $long",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.02,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    child: Image.network(
                                      'http://openweathermap.org/img/wn/$im.png',
                                      color: Colors.black,
                                    ),
                                    radius: 30,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.02,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        weather.main.toString(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 26),
                                      ),
                                      Text(
                                        weather.description.toString(),
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(50),
                              topLeft: Radius.circular(50))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                weathercard(
                                    val: weather.temp.toString(),
                                    unit: "Celsius",
                                    title: "Temperature"),
                                weathercard(
                                    val: weather.feel.toString(),
                                    unit: "Celsius",
                                    title: "Feels Like"),
                                weathercard(
                                    val: weather.clouds.toString(),
                                    unit: "Percent",
                                    title: "Clouds"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                weathercard(
                                    val: weather.pressure.toString(),
                                    unit: "hPa",
                                    title: "Pressure"),
                                weathercard(
                                    val: weather.windspeed.toString(),
                                    unit: "Meter/Sec",
                                    title: "Wind"),
                                weathercard(
                                    val: weather.humidity.toString(),
                                    unit: "Percent",
                                    title: "Humidity"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ]
            );
          } else {
            return Center(
                child: Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Image.asset(
                'assets/images/loading_weather.gif',
              ),
            ));
          }
        },
      ),
    );
  }
}
