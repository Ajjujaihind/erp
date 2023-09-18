import 'dart:convert';

import 'package:erp/model.dart/alldata.dart';
import 'package:http/http.dart' as http;

import '../model.dart/mymodel.dart';
import '../model.dart/productdetailsmodel.dart';

class ApiHelper {
  Future<MyModel> login(String email, String password) async {
    final loginUrl =
        Uri.parse('https://demo.extensionerp.com/api/method/login');

    try {
      var requestData = {
        "usr": email,
        "pwd": password,
      };

      final String requestBody = jsonEncode(requestData);
      final response = await http.post(loginUrl,
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'token 014658f9afe6cbd:e4904f8f7fb6632',
          },
          body: requestBody,
          encoding: Encoding.getByName("utf-8"));

      print("response ${response}");
      if (response.statusCode == 200) {
        // Successful request, parse the response JSON
        final responseData = jsonDecode(response.body);
        return MyModel.fromJson(responseData);
      } else {
        throw Exception('Failed login');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to login: $e');
    }
  }

  Future<AllDataModel> fetchData() async {
    final Url = Uri.parse(
        'https://demo.extensionerp.com/api/resource/Item?fields=["*"]');

    try {
      final response = await http.get(
        Url,
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'Authorization': 'token 014658f9afe6cbd:9b95f8a2cefc0ce',
        },
      );

      print("response ${response}");
      if (response.statusCode == 200) {
        // Successful request, parse the response JSON
        final responseData = jsonDecode(response.body);
        return AllDataModel.fromJson(responseData);
      } else {
        throw Exception('Failed login');
      }
    } catch (e) {
      print('Error: $e');
      throw e;
    }
  }

//Fetchproductsdetails
  Future<ProductDetailsModel> fetchProductsDetails(String name) async {
    final Url =
        Uri.parse('https://demo.extensionerp.com/api/resource/Item/$name');

    try {
      final response = await http.get(
        Url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'token 014658f9afe6cbd:9b95f8a2cefc0ce',
        },
      );

      print("response ${response}");
      if (response.statusCode == 200) {
        // Successful request, parse the response JSON
        final responseData = jsonDecode(response.body);
        return ProductDetailsModel.fromJson(responseData);
      } else {
        throw Exception('Failed login');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to login: $e');
    }
  }
}
