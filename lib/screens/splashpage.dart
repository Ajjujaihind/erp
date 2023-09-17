import 'dart:async';

import 'package:erp/constant/constant.dart';
import 'package:erp/screens/homescreen/homepage.dart';
import 'package:erp/screens/onboarding/loginpage.dart';
import 'package:flutter/material.dart';

class SpalshPage extends StatefulWidget {
  const SpalshPage({super.key});

  @override
  State<SpalshPage> createState() => _SpalshPageState();
}

class _SpalshPageState extends State<SpalshPage> {
  @override
  void initState() {
    myfun();
    super.initState();
  }

  void myfun() async {
    var value = await getShared("userId");
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return (value == null || value.isEmpty) ? LoginPage() : HomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Welcome",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
