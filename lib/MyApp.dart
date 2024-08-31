import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Responsive Flutter",
      home: HomeScreen(),
    );
  }
}
