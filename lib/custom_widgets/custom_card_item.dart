import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:koko/Utils/fonts_family.dart';
import 'package:koko/custom_widgets/title_text.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({
    Key? key,
    required this.url,
  }) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            color: Colors.brown.shade100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const TitleText(title: "Nombre"),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Macho",
                        style: TextStyle(
                            fontFamily: FontsFamily.openSansSemiBold,
                            color: Colors.brown.shade400),
                      ),
                      Text(
                        "1a 3m",
                        style: TextStyle(
                            fontFamily: FontsFamily.openSansSemiBold,
                            color: Colors.brown.shade400),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              fontFamily: FontsFamily.openSansSemiBold,
                              decoration: TextDecoration.none)),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
