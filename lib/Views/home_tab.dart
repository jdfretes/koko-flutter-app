import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:koko/Utils/default_strings.dart';
import 'package:koko/Utils/fonts_family.dart';
import 'package:koko/Utils/image_utils.dart';
import 'package:koko/custom_widgets/carousel_text.dart';
import 'package:koko/custom_widgets/custom_card_item.dart';
import 'package:koko/custom_widgets/custom_text_field.dart';
import 'package:koko/custom_widgets/title_text.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    Key? key,
    required this.categoriesList,
    required this.imageUtils,
  }) : super(key: key);

  final List<String> categoriesList;
  final ImageUtils imageUtils;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                title: DefaultStrings.categories,
              ),
              CarouselText(categoriesList: categoriesList),
              Container(
                margin: const EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TitleText(title: DefaultStrings.nearYou),
                    Text(
                      DefaultStrings.seeAll,
                      style: TextStyle(
                          fontFamily: FontsFamily.openSansSemiBold,
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
              return CustomCardItem(url: url);
            },
          ).toList(),
        ),
      ],
    );
  }
}