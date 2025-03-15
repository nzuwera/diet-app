import 'package:flutter/material.dart';

import 'package:diet_app/pages/home.dart';

void main() {
  runApp(const DietApp());
}

class DietApp extends StatelessWidget {
  const DietApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: HomePage(),
    );
  }
}
