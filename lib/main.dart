import 'package:book_car/pages/FirstPAge.dart';
import 'package:book_car/pages/homePage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Firstpage(),
    );
  }
}