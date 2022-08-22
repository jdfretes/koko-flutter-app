import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:koko/CustomWidgets/CarouselText.dart';
import 'package:koko/CustomWidgets/TitleText.dart';
import 'package:koko/CustomWidgets/CustomAppBar.dart';
import 'package:koko/CustomWidgets/CustomTextField.dart';
import 'package:koko/Utils/DefaultStrings.dart';
import 'package:koko/Utils/FontsFamily.dart';
import 'package:koko/Utils/ImageUtils.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ImageUtils imageUtils = ImageUtils();
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
                  const TitleText(
                    title: DefaultStrings.Categories,
                  ),
                  CarouselText(categoriesList: categoriesList),
                  Container(
                    margin: const EdgeInsets.only(top: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TitleText(title: DefaultStrings.NearYou),
                        Text(
                          DefaultStrings.SeeAll,
                          style: TextStyle(
                              fontFamily: FontsFamily.OpenSansSemiBold,
                              color: Colors.brown.shade600),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            GFItemsCarousel(
              itemHeight: 350,
              rowCount: 2,
              children: imageUtils.images.map(
                (url) {
                  return Container(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5.0)),
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          color: Colors.brown.shade100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(5.0)),
                                child: Container(
                                  child: Image.network(
                                    url,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 16),
                                child: const TitleText(title: "Nombre"),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Macho",
                                      style: TextStyle(
                                          fontFamily:
                                              FontsFamily.OpenSansSemiBold,
                                          color: Colors.brown.shade400),
                                    ),
                                    Text(
                                      "1a 3m",
                                      style: TextStyle(
                                          fontFamily:
                                              FontsFamily.OpenSansSemiBold,
                                          color: Colors.brown.shade400),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GFIconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_border,
                                      color: Colors.brown.shade700,
                                    ),
                                    type: GFButtonType.solid,
                                    color: Colors.white,
                                    size: GFSize.SMALL,
                                  ),
                                  GFButton(
                                    onPressed: () {},
                                    color: Colors.brown,
                                    child: const Text("Adoptar",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontFamily:
                                                FontsFamily.OpenSansSemiBold,
                                            decoration: TextDecoration.none)),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                  );
                },
              ).toList(),
            ),
          ],
        ));
  }
}
