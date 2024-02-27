import 'package:flutter/material.dart';
import 'package:rest_api_7_project/Services/Utilities/states_services.dart';
import 'package:rest_api_7_project/view/country_states.dart';
import 'package:shimmer/shimmer.dart';

class CountryList extends StatefulWidget {
  const CountryList({super.key});

  @override
  State<CountryList> createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    StateServices stateServices = StateServices();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextFormField(
              onChanged: (value) {
                setState(() {});
              },
              controller: searchController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                hintText: 'Search with country name',
                // enabledBorder: OutlineInputBorder(
                //   //borderSide: BorderSide(color: Colors.grey.shade500),
                //   borderRadius: BorderRadius.circular(50),
                // ),
                // focusedBorder: OutlineInputBorder(
                //   //borderSide: BorderSide(color: Colors.grey.shade500),
                //   borderRadius: BorderRadius.circular(50),
                // ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: FutureBuilder(
                future: stateServices.fecthCountryStates(),
                builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
                  if (!snapshot.hasData) {
                    return ListView.builder(
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) {
                        return Shimmer.fromColors(
                          baseColor: Colors.grey.shade700,
                          highlightColor: Colors.grey.shade100,
                          child: Column(
                            children: [
                              ListTile(
                                title: Container(
                                  height: 10,
                                  width: 80,
                                  color: Colors.white,
                                ),
                                subtitle: Container(
                                  height: 10,
                                  width: 80,
                                  color: Colors.white,
                                ),
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, int index) {
                        String name =
                            snapshot.data![index]['country'].toString();
                        if (searchController.text.isEmpty) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CountryStates(
                                        country: snapshot.data![index]
                                            ['country'],
                                        flag: snapshot.data![index]
                                            ['countryInfo']['flag'],
                                        cases: snapshot.data![index]['cases']
                                            .toString(),
                                        todayCases: snapshot.data![index]
                                                ['todayCases']
                                            .toString(),
                                        deaths: snapshot.data![index]['deaths']
                                            .toString(),
                                        todayDeaths: snapshot.data![index]
                                                ['todayDeaths']
                                            .toString(),
                                        recovered: snapshot.data![index]
                                                ['recovered']
                                            .toString(),
                                        active: snapshot.data![index]['active']
                                            .toString(),
                                        critical: snapshot.data![index]
                                                ['critical']
                                            .toString(),
                                        population: snapshot.data![index]
                                                ['population']
                                            .toString(),
                                        continent: snapshot.data![index]
                                                ['continent']
                                            .toString(),
                                      ),
                                    ),
                                  );
                                },
                                child: ListTile(
                                  title: Text(snapshot.data![index]['country']
                                      .toString()),
                                  subtitle: Text(snapshot.data![index]['cases']
                                      .toString()),
                                  leading: Image(
                                      height: 60,
                                      width: 60,
                                      image: NetworkImage(snapshot.data![index]
                                          ['countryInfo']['flag'])),
                                ),
                              ),
                            ],
                          );
                        } else if (name
                            .toLowerCase()
                            .contains(searchController.text.toLowerCase())) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CountryStates(
                                        country: snapshot.data![index]
                                            ['country'],
                                        flag: snapshot.data![index]
                                            ['countryInfo']['flag'],
                                        cases: snapshot.data![index]['cases']
                                            .toString(),
                                        todayCases: snapshot.data![index]
                                                ['todayCases']
                                            .toString(),
                                        deaths: snapshot.data![index]['deaths']
                                            .toString(),
                                        todayDeaths: snapshot.data![index]
                                                ['todayDeaths']
                                            .toString(),
                                        recovered: snapshot.data![index]
                                                ['recovered']
                                            .toString(),
                                        active: snapshot.data![index]['active']
                                            .toString(),
                                        critical: snapshot.data![index]
                                                ['critical']
                                            .toString(),
                                        population: snapshot.data![index]
                                                ['population']
                                            .toString(),
                                        continent: snapshot.data![index]
                                                ['continent']
                                            .toString(),
                                      ),
                                    ),
                                  );
                                },
                                child: ListTile(
                                  title: Text(snapshot.data![index]['country']
                                      .toString()),
                                  subtitle: Text(snapshot.data![index]['cases']
                                      .toString()),
                                  leading: Image(
                                      height: 60,
                                      width: 60,
                                      image: NetworkImage(snapshot.data![index]
                                          ['countryInfo']['flag'])),
                                ),
                              ),
                            ],
                          );
                        } else {
                          return Container();
                        }
                        // return Column(
                        //   children: [
                        //     ListTile(
                        //       title:
                        //           Text(snapshot.data![index]['country'].toString()),
                        //       subtitle:
                        //           Text(snapshot.data![index]['cases'].toString()),
                        //       leading: Image(
                        //           height: 60,
                        //           width: 60,
                        //           image: NetworkImage(snapshot.data![index]
                        //               ['countryInfo']['flag'])),
                        //     ),
                        //   ],
                        // );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
