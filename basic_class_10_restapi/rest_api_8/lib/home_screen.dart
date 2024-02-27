import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rest_api_8/api_model.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<ApiModel>> getApi() async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      var body = jsonDecode(response.body) as List;
      if (response.statusCode == 200) {
        return body.map((e) {
          final map = e as Map<String, dynamic>;
          return ApiModel(
            userId: map['userId'],
            id: map['id'],
            title: map['title'],
            body: map['body'],
          );
        }).toList();
      }
    } on SocketException {
      throw Exception("no internet");
    }
    throw Exception("error in data");
  }

  var selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropDown'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
                future: getApi(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return DropdownButton(
                        hint: const Text("select"),
                        value: selectedValue,
                        items: snapshot.data!.map((e) {
                          return DropdownMenuItem(
                            value: e.id.toString(),
                            child: Text(e.id.toString()),
                          );
                        }).toList(),
                        onChanged: (value) {
                          selectedValue = value;
                          setState(() {});
                        });
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
