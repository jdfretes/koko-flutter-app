import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:koko/Utils/image_utils.dart';
import 'package:koko/Views/home_tab.dart';
import 'package:koko/custom_widgets/custom_app_bar.dart';

class CustomTabBarView extends StatefulWidget {
  const CustomTabBarView({Key? key}) : super(key: key);

  @override
  State<CustomTabBarView> createState() => _CustomTabBarViewState();
}

class _CustomTabBarViewState extends State<CustomTabBarView> with TickerProviderStateMixin {
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
      body: GFTabBarView(
        controller: tabController,
        children: [
          HomeTab(categoriesList: categoriesList, imageUtils: imageUtils),
          HomeTab(categoriesList: categoriesList, imageUtils: imageUtils),
          HomeTab(categoriesList: categoriesList, imageUtils: imageUtils)
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


