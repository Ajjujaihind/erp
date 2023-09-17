import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../provider/erp_provider.dart';
import 'package:erp/model.dart/productdetailsmodel.dart';

class ProductsDetailsPage extends StatefulWidget {
  final String name;

  ProductsDetailsPage(this.name);

  @override
  State<ProductsDetailsPage> createState() => _ProductsDetailsPageState();
}

class _ProductsDetailsPageState extends State<ProductsDetailsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Data'),
        actions: [
          InkWell(
              onTap: () {
                shareProductDetails();
              },
              child: Icon(Icons.share))
        ],
      ),
      body: FutureBuilder<ProductDetailsModel?>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Display a loading indicator while waiting for data
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // Handle errors
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data == null) {
            // Display a message when no data is available
            return Center(child: Text("No information of this Product"));
          } else {
            // Data is available, display the card with product details
            final productDetailsModel = snapshot.data!;
            myshare = true;
            return Card(
              margin: EdgeInsets.all(16.0),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: ${productDetailsModel!.data!.name.toString() ?? 'N/A'.toString()}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      child: Image.network(
                        fit: BoxFit.contain,
                        productDetailsModel!.data!.image.toString(),
                        errorBuilder: (BuildContext context, Object exception,
                                StackTrace? stackTrace) =>
                            Container(),
                      ),
                    ),
                    Text(
                      'owner: ${productDetailsModel!.data!.owner.toString() ?? 'N/A'}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'creation: ${productDetailsModel!.data!.creation.toString() ?? 'N/A'}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'modified: ${productDetailsModel!.data!.modified.toString() ?? 'N/A'}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'modified_by: ${productDetailsModel!.data!.modifiedBy.toString() ?? 'N/A'}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'item code: ${productDetailsModel!.data!.itemCode.toString() ?? 'N/A'}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'item name: ${productDetailsModel!.data!.itemName.toString() ?? 'N/A'}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'item group: ${productDetailsModel!.data!.itemGroup.toString() ?? 'N/A'}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'description: ${productDetailsModel!.data!.description.toString() ?? 'N/A'}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'end of life: ${productDetailsModel!.data!.endOfLife.toString() ?? 'N/A'}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'default material request type: ${productDetailsModel!.data!.defaultMaterialRequestType.toString() ?? 'N/A'}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'country of origin: ${productDetailsModel!.data!.countryOfOrigin.toString() ?? 'N/A'}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }

  bool myshare = false;
  ProductDetailsModel? fetchedData;
  Future<ProductDetailsModel?> fetchData() async {
    try {
      final fetchedData = await Provider.of<ErpProvider>(context, listen: false)
          .fetchProducts(widget.name);
      // Set fetchedData and myshare to true

      return fetchedData;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }

  void shareProductDetails() {
    // var value = Provider.of<ErpProvider>(context);
    // print("hjh ${value.share}");

    if (myshare) {
      try {
        final textToShare = '''
        Name: ${fetchedData?.data?.name ?? 'N/A'}
        owner: ${fetchedData?.data?.owner ?? 'N/A'}
        creation: ${fetchedData?.data?.creation ?? 'N/A'}
        modified: ${fetchedData?.data?.modified ?? 'N/A'}
        modified_by: ${fetchedData?.data?.modifiedBy ?? 'N/A'}
        item code: ${fetchedData?.data?.itemCode ?? 'N/A'}
        item name: ${fetchedData?.data?.itemName ?? 'N/A'}
        item group: ${fetchedData?.data?.itemGroup ?? 'N/A'}
        description: ${fetchedData?.data?.description ?? 'N/A'}
        end of life: ${fetchedData?.data?.endOfLife ?? 'N/A'}
        default material request type: ${fetchedData?.data?.defaultMaterialRequestType ?? 'N/A'}
        country of origin: ${fetchedData?.data?.countryOfOrigin ?? 'N/A'}
      ''';

        Share.share(textToShare);
      } catch (e) {
        print('Error sharing: $e');
        // Handle the error as needed
      }
    }
  }
}
