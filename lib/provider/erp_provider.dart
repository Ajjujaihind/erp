import 'package:erp/model.dart/alldata.dart';
import 'package:erp/model.dart/mymodel.dart';
import 'package:erp/model.dart/productdetailsmodel.dart';
import 'package:erp/services/apihelper.dart';
import 'package:flutter/material.dart';

class ErpProvider extends ChangeNotifier {
  bool isLoading = false;
  MyModel? myModel;
  AllDataModel? allDataModel;

  Future<MyModel> getLogindetails(email, passwprd) async {
    notifyListeners();

    try {
      myModel = await ApiHelper().login(email, passwprd);
      return myModel!;
    } catch (e) {
      print('Error: $e');
      throw e;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<AllDataModel> getAllData() async {
    notifyListeners();

    try {
      allDataModel = await ApiHelper().fetchData();
      notifyListeners();
      return allDataModel!;
    } catch (e) {
      print('Error: $e');

      throw e;
    } finally {
      notifyListeners();
    }
  }

  ProductDetailsModel? productDetailsModel;

  Future<ProductDetailsModel> fetchProducts(String name) async {
    notifyListeners();

    try {
      productDetailsModel = (await ApiHelper().fetchProductsDetails(name));

      return productDetailsModel!;
    } catch (e) {
      print('Error: $e');
      throw e;
    } finally {
      notifyListeners();
    }
  }
}
