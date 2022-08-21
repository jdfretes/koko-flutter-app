import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:koko/Utils/DefaultStrings.dart';
import 'package:koko/Utils/FontsFamily.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GFAppBar(
      leading: Container(
        margin: const EdgeInsets.fromLTRB(5, 5, 8, 8),
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
            DefaultStrings.MyLocation,
            style: TextStyle(
                color: Colors.brown,
                fontFamily: FontsFamily.OpenSansRegular,
                fontSize: 16),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                "Asuncion, Mcal. Lopez",
                style: TextStyle(
                    color: Colors.brown,
                    fontFamily: FontsFamily.OpenSansSemiBold,
                    fontSize: 24),
              ),
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
      backgroundColor: Colors.white,
      elevation: 0.0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
