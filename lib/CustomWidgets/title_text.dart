import 'package:flutter/material.dart';
import 'package:koko/Utils/fonts_family.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;


  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
            fontFamily: FontsFamily.openSansBold,
            fontSize: 18,
            color: Colors.brown.shade800));
  }
}
