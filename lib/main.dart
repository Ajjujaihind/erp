import 'package:erp/provider/erp_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'screens/splashpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ErpProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
            useMaterial3: true,
          ),
          home: const SpalshPage()),
    );
  }
}
