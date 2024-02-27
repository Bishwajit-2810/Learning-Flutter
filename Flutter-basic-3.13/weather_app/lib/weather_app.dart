import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/extra_weather_data.dart';
import 'package:weather_app/forecast_card.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/secrets/api.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  Future<Map<String, dynamic>> getDataWeather() async {
    try {
      String city = "Dhaka";

      final result = await http.get(
        Uri.parse(
          'https://api.openweathermap.org/data/2.5/forecast?q=$city&APPID=$apikey',
        ),
      );
      final data = jsonDecode(result.body);
      if (data['cod'] != '200') {
        throw data['message'];
      }
      return data;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: FutureBuilder(
        future: getDataWeather(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator.adaptive());
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          final data = snapshot.data!;
          final currentTemp = (data['list'][0]['main']['temp']) - 273;
          final currentsky = data['list'][0]['weather'][0]['main'];
          final pressure = data['list'][0]['main']['pressure'];
          final visibility = data['list'][0]['wind']['speed'];
          final humidity = data['list'][0]['main']['humidity'];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*    Placeholder(
                fallbackHeight: 250,
              ),    //use placeholder to determine our place distribution
              */
                // main card
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10,
                          sigmaY: 10,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                currentTemp.toStringAsFixed(2) + ' C',
                                style: const TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Icon(
                                currentsky == 'Clouds' || currentsky == 'Rain'
                                    ? Icons.cloud
                                    : Icons.sunny,
                                size: 65,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                currentsky,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 115, 128, 173),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Hourly Forecast",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 12),

                // 2nd card

                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     children: [
                //       for (int i = 1; i <= 5; i++)
                //         ForecastCard(
                //           time: data['list'][i]['dt'].toString(),
                //           icon: data['list'][i]['weather'][0]['main'] ==
                //                       'Clouds' ||
                //                   data['list'][i]['weather'][0]['main'] ==
                //                       'Rain'
                //               ? Icons.cloud
                //               : Icons.sunny,
                //           temparature:
                //               data['list'][i]['main']['temp'].toString(),
                //         ),
                //       const SizedBox(
                //         width: 3,
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      final futuretime = DateTime.parse(
                          data['list'][index + 1]['dt_txt'].toString());
                      return ForecastCard(
                        time: DateFormat.Hm().format(futuretime),
                        icon: data['list'][index + 1]['weather'][0]['main'] ==
                                    'Clouds' ||
                                data['list'][index + 1]['weather'][0]['main'] ==
                                    'Rain'
                            ? Icons.cloud
                            : Icons.sunny,
                        temparature:
                            (data['list'][index + 1]['main']['temp'] - 273)
                                .toStringAsFixed(2),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 20),
                // 3rd card

                const Text(
                  "Weather Forecast",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ExtraData(
                      icon: Icons.water_drop,
                      typeofdata: "Humidity",
                      number: "$humidity",
                    ),
                    ExtraData(
                      icon: Icons.visibility,
                      typeofdata: "Visibility",
                      number: "$visibility",
                    ),
                    ExtraData(
                      icon: Icons.beach_access,
                      typeofdata: 'Pressure',
                      number: '$pressure',
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
