import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:koko/Utils/fonts_family.dart';

class CarouselText extends StatelessWidget {
  const CarouselText({
    Key? key,
    required this.categoriesList,
  }) : super(key: key);

  final List<String> categoriesList;

  @override
  Widget build(BuildContext context) {
    return GFItemsCarousel(
      rowCount: 4,
      itemHeight: 40,
      children: categoriesList.map(
            (text) {
          return Container(
            margin: const EdgeInsets.fromLTRB(0, 8, 4, 0),
            child: GFButton(
              type: text == categoriesList.first ? GFButtonType.solid : GFButtonType.outline,
              onPressed: () {},
              text: text,
              shape: GFButtonShape.pills,
              color: Colors.brown.shade400,
              textStyle: TextStyle(
                  fontFamily: FontsFamily.openSansLight,
                  fontSize: 18,
                  color: text == categoriesList.first ? Colors.white : Colors.brown.shade800
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}