import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:koko/Utils/DefaultStrings.dart';
import 'package:koko/Utils/FontsFamily.dart';
import 'package:koko/Utils/ImageUtils.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> with TickerProviderStateMixin {
  ImageUtils imageUtils = ImageUtils();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUtils.getImage()),
                fit: BoxFit.cover,
              ),
              color: Colors.redAccent),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.grey.withOpacity(0.0),
                  Colors.black,
                ],
                stops: const [
                  0.0,
                  1.0
                ]),
          ),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(32, 32, 32, 16),
                    child: Text(
                      DefaultStrings.findANewFriend,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: FontsFamily.OpenSansRegular,
                          decoration: TextDecoration.none),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(32, 16, 32, 64),
                    child: Text(
                      DefaultStrings.petsWaitingForYou,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: FontsFamily.OpenSansLight,
                          decoration: TextDecoration.none),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 32),
                    child: GFButton(
                      onPressed: () {},
                      blockButton: true,
                      color: Colors.redAccent,
                      child: const Text(DefaultStrings.GetStarted,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: FontsFamily.OpenSansRegular,
                              decoration: TextDecoration.none)),
                    ),
                  ),
                ]),
          ),
        )
      ],
    );
  }
}