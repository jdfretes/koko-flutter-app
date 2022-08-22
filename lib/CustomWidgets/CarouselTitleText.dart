import 'package:flutter/material.dart';
import 'package:koko/Utils/DefaultStrings.dart';
import 'package:koko/Utils/FontsFamily.dart';

class CarouselTitleText extends StatelessWidget {
  const CarouselTitleText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(DefaultStrings.Categories,
        style: TextStyle(
            fontFamily: FontsFamily.OpenSansBold,
            fontSize: 18,
            color: Colors.brown.shade800));
  }
}
