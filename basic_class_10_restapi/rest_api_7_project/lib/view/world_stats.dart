import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:rest_api_7_project/Model/api_models.dart';
import 'package:rest_api_7_project/Services/Utilities/states_services.dart';
import 'package:rest_api_7_project/constants.dart';
import 'package:rest_api_7_project/view/country_list.dart';

class WorldStates extends StatefulWidget {
  const WorldStates({super.key});

  @override
  State<WorldStates> createState() => _WorldStatesState();
}

class _WorldStatesState extends State<WorldStates> {
  @override
  Widget build(BuildContext context) {
    StateServices stateServices = StateServices();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              FutureBuilder(
                future: stateServices.fecthWorldStates(),
                builder: (context, AsyncSnapshot<ApiModel> snapshot) {
                  if (!snapshot.hasData) {
                    return const Expanded(
                      child: SpinKitFadingCircle(
                        color: Colors.white,
                        size: 50,
                      ),
                    );
                  } else {
                    return Column(
                      children: [
                        PieChart(
                          dataMap: {
                            'Total':
                                double.parse(snapshot.data!.cases!.toString()),
                            'Recovered': double.parse(
                                snapshot.data!.recovered!.toString()),
                            'Deaths':
                                double.parse(snapshot.data!.deaths!.toString()),
                          },
                          animationDuration: const Duration(milliseconds: 1200),
                          chartType: ChartType.ring,
                          colorList: constColorList,
                          legendOptions: const LegendOptions(
                            legendPosition: LegendPosition.left,
                          ),
                          chartValuesOptions: const ChartValuesOptions(
                              showChartValuesInPercentage: true),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: SingleChildScrollView(
                            child: Card(
                              child: Column(
                                children: [
                                  ReuseableRow(
                                      title: "Cases",
                                      value: snapshot.data!.cases!.toString()),
                                  ReuseableRow(
                                      title: "Deaths",
                                      value: snapshot.data!.deaths!.toString()),
                                  ReuseableRow(
                                      title: "Recovered",
                                      value:
                                          snapshot.data!.recovered!.toString()),
                                  ReuseableRow(
                                      title: "Active",
                                      value: snapshot.data!.active!.toString()),
                                  ReuseableRow(
                                      title: "Critical",
                                      value:
                                          snapshot.data!.critical!.toString()),
                                  ReuseableRow(
                                      title: "Today's Death",
                                      value: snapshot.data!.todayDeaths!
                                          .toString()),
                                  ReuseableRow(
                                      title: "Today's Recovered",
                                      value: snapshot.data!.todayRecovered!
                                          .toString()),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const CountryList()));
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xff1aa260),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: double.infinity,
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text("Track Country"),
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReuseableRow extends StatelessWidget {
  final String title, value;
  const ReuseableRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(title), Text(value)],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(),
        ],
      ),
    );
  }
}
