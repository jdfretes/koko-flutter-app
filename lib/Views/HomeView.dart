import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:koko/CustomWidgets/CarouselText.dart';
import 'package:koko/CustomWidgets/TitleText.dart';
import 'package:koko/CustomWidgets/CustomAppBar.dart';
import 'package:koko/CustomWidgets/CustomTextField.dart';
import 'package:koko/Utils/DefaultStrings.dart';
import 'package:koko/Utils/FontsFamily.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> categoriesList = [
    "Todos",
    "Perros",
    "Gatos",
    "Hamsters",
    "Peces"
  ];

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
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitleText(title: DefaultStrings.Categories,),
                  CarouselText(categoriesList: categoriesList),
                  Container(
                    margin: const EdgeInsets.only(top: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         const TitleText(title: DefaultStrings.NearYou),
                         Text(DefaultStrings.SeeAll, style: TextStyle(fontFamily: FontsFamily.OpenSansSemiBold, color: Colors.brown.shade600),)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
