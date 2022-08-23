import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:koko/CustomWidgets/carousel_text.dart';
import 'package:koko/CustomWidgets/custom_card_item.dart';
import 'package:koko/CustomWidgets/title_text.dart';
import 'package:koko/CustomWidgets/custom_app_bar.dart';
import 'package:koko/CustomWidgets/custom_text_field.dart';
import 'package:koko/Utils/default_strings.dart';
import 'package:koko/Utils/fonts_family.dart';
import 'package:koko/Utils/image_utils.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  ImageUtils imageUtils = ImageUtils();
  final List<String> categoriesList = [
    "Todos",
    "Perros",
    "Gatos",
    "Hamsters",
    "Peces"
  ];

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

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
      ),
      bottomNavigationBar: GFTabBar(
        tabBarColor: Colors.black,
        length: 3,
        controller: tabController,
        tabs: const [
          Tab(
            icon: Icon(Icons.home),
            child: Text(
              "Inicio",
            ),
          ),
          Tab(
            icon: Icon(Icons.favorite_outline),
            child: Text(
              "Favoritos",
            ),
          ),
          Tab(
            icon: Icon(Icons.person),
            child: Text(
              "Perfil",
            ),
          ),
        ],
      ),
    );
  }
}
