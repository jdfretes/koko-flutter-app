import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:koko/Utils/default_strings.dart';
import 'package:koko/Utils/fonts_family.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: GFAppBar(
        leading: Container(
          margin: const EdgeInsets.fromLTRB(4, 4, 4, 0),
          decoration: BoxDecoration(
            color: Colors.brown[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: GFIconButton(
            icon: const Icon(
              Icons.location_on_outlined,
              color: Colors.brown,
            ),
            onPressed: () {},
            type: GFButtonType.transparent,
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              DefaultStrings.myLocation,
              style: TextStyle(
                  color: Colors.brown,
                  fontFamily: FontsFamily.openSansRegular,
                  fontSize: 14),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Flexible(
                    child: Text(
                  "Asunción, Mrcal Lopez 000",
                  style: TextStyle(
                    color: Colors.brown,
                    fontFamily: FontsFamily.openSansSemiBold,
                    fontSize: 16,
                  ),
                )),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.brown,
                )
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
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
