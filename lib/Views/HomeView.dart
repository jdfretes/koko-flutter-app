import 'package:flutter/material.dart';
import 'package:koko/CustomWidgets/CustomAppBar.dart';
import 'package:koko/CustomWidgets/CustomTextField.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: const CustomAppBar(),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: const CustomTextField(),
            )
          ],
        ));
  }
}
