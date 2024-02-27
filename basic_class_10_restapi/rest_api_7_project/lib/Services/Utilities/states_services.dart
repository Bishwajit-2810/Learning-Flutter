import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rest_api_7_project/Model/api_models.dart';
import 'package:rest_api_7_project/Services/Utilities/app_url.dart';

class StateServices {
  Future<ApiModel> fecthWorldStates() async {
    final response = await http.get(Uri.parse(AppUrl.worldStatusApi));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return ApiModel.fromJson(data);
    } else {
      throw Exception('error');
    }
  }

  Future<List<dynamic>> fecthCountryStates() async {
    var data;
    final response = await http.get(Uri.parse(AppUrl.countryStatusApi));

    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('error');
    }
  }
}
