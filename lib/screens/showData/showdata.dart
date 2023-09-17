import 'package:flutter/material.dart';

class ShowDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with your actual JSON data
    List<Map<String, dynamic>> jsonData = [
      {
        "name": "0° Channel S/C U",
        "creation": "2023-06-03 18:05:36.799282",
        "modified": "2023-07-11 18:02:23.743174",
      },
      // Add more data items as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Important Data'),
      ),
      body: ListView.builder(
        itemCount: jsonData.length,
        itemBuilder: (context, index) {
          final data = jsonData[index];
          return Card(
            margin: EdgeInsets.all(16.0),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name: ${data['name']}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Creation Date: ${data['creation']}'),
                  Text('Modified Date: ${data['modified']}'),
                  // Add more fields as needed
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
