import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:koko/Utils/DefaultStrings.dart';
import 'package:koko/Utils/FontsFamily.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        leading: GFIconButton(
          icon: const Icon(
            Icons.location_on_outlined,
            color: Colors.brown,
          ),
          onPressed: () {},
          type: GFButtonType.transparent,
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              DefaultStrings.MyLocation,
              style: TextStyle(color: Colors.brown, fontFamily: FontsFamily.OpenSansRegular, fontSize: 16),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "Asuncion, Mcal. Lopez",
                  style: TextStyle(color: Colors.brown, fontFamily: FontsFamily.OpenSansSemiBold, fontSize: 24),
                ),
                Icon(Icons.keyboard_arrow_down, color: Colors.brown,)
              ],
            )

          ],
        ),
        actions: <Widget>[
          GFIconButton(
            icon: const Icon(
              Icons.notifications_active_outlined,
              color: Colors.brown,
            ),
            onPressed: () {},
            type: GFButtonType.transparent,
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
    );
  }
}
