import 'package:flutter/material.dart';
import 'package:rest_api_7_project/view/world_stats.dart';

class CountryStates extends StatelessWidget {
  final String country,
      flag,
      cases,
      todayCases,
      deaths,
      todayDeaths,
      recovered,
      active,
      critical,
      population,
      continent;
  const CountryStates(
      {super.key,
      required this.country,
      required this.flag,
      required this.cases,
      required this.todayCases,
      required this.deaths,
      required this.todayDeaths,
      required this.recovered,
      required this.active,
      required this.critical,
      required this.population,
      required this.continent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(country),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.067),
                      child: Card(
                        child: Column(
                          children: [
                            ReuseableRow(title: 'cases', value: cases),
                            ReuseableRow(
                                title: 'todayCases', value: todayCases),
                            ReuseableRow(title: 'deaths', value: deaths),
                            ReuseableRow(
                                title: 'todayDeaths', value: todayDeaths),
                            ReuseableRow(title: 'recovered', value: recovered),
                            ReuseableRow(title: 'active', value: active),
                            ReuseableRow(title: 'critical', value: critical),
                            ReuseableRow(title: 'continent', value: continent),
                            ReuseableRow(
                                title: 'population', value: population),
                          ],
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(flag),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
