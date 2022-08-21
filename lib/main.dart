import 'package:flutter/material.dart';
import 'package:koko/Views/HomeView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KOKO',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomeView(),
    );
  }
}
