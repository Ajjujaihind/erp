// This function returns true if the screen width is greater than 600 pixels (for tablets and web)
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool isLargeScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 600;
}

// Function to show a loading indicator dialog.
showLoader(BuildContext context) {
  // Create an AlertDialog with a circular loading indicator.
  AlertDialog alert = AlertDialog(
    content: Builder(
      builder: (context) {
        return SizedBox(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Loading....",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        );
      },
    ),
  );

  // Show the AlertDialog as a dialog.
  showDialog(
    barrierDismissible:
        false, // Prevent dismissing the dialog by tapping outside.
    context: context,
    builder: (context) {
      return alert;
    },
  );
}

void showMsg(String msg, BuildContext context) {
  // Show a toast message using the Fluttertoast plugin.
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Theme.of(context).primaryColor,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

void setShared(String key, String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(key, value);
}

Future<void> freeShared() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.clear();
}

Future<String?> getShared(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? value = prefs.getString(key);
  return value;
}

Widget showErrorMessage() {
  // Customize this widget to display an error message or UI
  return Center(
    child: Text('Error occurred while fetching data.'),
  );
}

Widget myLoader(BuildContext context) {
  // Customize this widget to display a loading indicator
  return Center(child: CircularProgressIndicator());
}
