import 'package:erp/model.dart/alldata.dart';
import 'package:erp/screens/onboarding/loginpage.dart';
import 'package:erp/screens/productdetails/productdetails.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constant/constant.dart';
import '../../provider/erp_provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<AllDataModel?>? dataFuture;

  @override
  void initState() {
    super.initState();
    dataFuture = getData();
  }

  Future<AllDataModel?> getData() async {
    try {
      return await Provider.of<ErpProvider>(context, listen: false)
          .getAllData();
    } catch (e) {
      print('Error: $e');
      return dataFuture;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Important Data'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                InkWell(
                    onTap: () async {
                      await freeShared();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ));
                    },
                    child: Icon(Icons.logout))
              ],
            ),
          )
        ],
      ),
      body: FutureBuilder<AllDataModel?>(
        future: dataFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return myLoader(context);
          } else if (snapshot.hasError) {
            return showErrorMessage();
          } else if (snapshot.hasData) {
            final allDataModel = snapshot.data!;
            return ListView.builder(
              itemCount: allDataModel.data!.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductsDetailsPage(
                              allDataModel.data![index].itemName.toString()),
                        ));
                  },
                  child: Card(
                    margin: EdgeInsets.all(16.0),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name: ${allDataModel.data![index].itemName.toString()}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(allDataModel.data![index].owner.toString()),
                          Text(allDataModel.data![index].creation.toString()),
                          Text(allDataModel.data![index].owner.toString()),
                          Text(
                              'openingStock: ${allDataModel.data![index].openingStock}'),
                          Text(allDataModel.data![index].itemCode.toString()),
                          // Add more fields as needed
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
