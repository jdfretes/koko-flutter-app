import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:koko/CustomWidgets/CustomAppBar.dart';
import 'package:koko/Utils/DefaultStrings.dart';

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
        appBar: null,
        body: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                child: const CustomAppBar(),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: DefaultStrings.SearchPets
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
