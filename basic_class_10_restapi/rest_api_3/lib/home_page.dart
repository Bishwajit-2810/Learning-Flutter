import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api_3/api_models.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ApiMdels> apiModels = [];

  Future<List<ApiMdels>> getApimdls() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      for (Map i in data) {
        apiModels.add(ApiMdels.fromJson(i));
      }
      return apiModels;
    } else {
      return apiModels;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            FutureBuilder(
                future: getApimdls(),
                builder: (context, AsyncSnapshot<List<ApiMdels>> snapshot) {
                  if (!snapshot.hasData) {
                    return const CircularProgressIndicator();
                  } else {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: apiModels.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: Column(
                              children: [
                                Text('id: ${snapshot.data![index].id}'),
                                Text('name: ${snapshot.data![index].name}'),
                                Text(
                                    'address: ${snapshot.data![index].address}'),
                                Text(
                                    'company: ${snapshot.data![index].company}'),
                                Text('phone: ${snapshot.data![index].phone}'),
                                Text(
                                    'website: ${snapshot.data![index].website}'),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
