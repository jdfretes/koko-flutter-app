import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:koko/custom_widgets/custom_card_item.dart';
import 'package:koko/utils/image_utils.dart';

import '../../../Utils/fonts_family.dart';
import '../../../dotted.dart';

class ProfileTabView extends StatefulWidget {
  const ProfileTabView({Key? key, required this.onShowHomeTab})
      : super(key: key);
  final void Function(bool) onShowHomeTab;

  @override
  State<ProfileTabView> createState() => _ProfileTabViewState();
}

class _ProfileTabViewState extends State<ProfileTabView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      widget.onShowHomeTab(false);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: const Text(
          "Perfil",
          style: TextStyle(color: Colors.brown),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            alignment: Alignment.center,
            child: DashedCircle(
              color: Colors.brown.shade500,
              child: const Padding(
                padding: EdgeInsets.all(3),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1661950570442-ee7e49c25cba"),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 16, 0, 16),
            child: Column(
              children: [
                Text(
                  "Sara Miers",
                  style: TextStyle(
                      fontFamily: FontsFamily.openSansBold,
                      color: Colors.brown.shade900),
                ),
                Text(
                  "@saram01",
                  style: TextStyle(
                      fontFamily: FontsFamily.openSansLight,
                      color: Colors.brown.shade900),
                )
              ],
            ),
          ),
          GFListTile(
            title: Text(
              "Contactar",
              style: TextStyle(
                  fontFamily: FontsFamily.openSansSemiBold,
                  color: Colors.brown.shade900),
            ),
            avatar: const Icon(Icons.add_ic_call_outlined),
          ),
          const Divider(
            height: 1,
            thickness: 0.1,
            indent: 24,
            endIndent: 24,
            color: Colors.black,
          ),
          GFListTile(
            title: Text(
              "Política de privacidad",
              style: TextStyle(
                  fontFamily: FontsFamily.openSansSemiBold,
                  color: Colors.brown.shade900),
            ),
            avatar: const Icon(Icons.policy_outlined),
          ),
          const Divider(
            height: 1,
            thickness: 0.1,
            indent: 24,
            endIndent: 24,
            color: Colors.black,
          ),
          GFListTile(
            title: Text(
              "Términos y Condiciones",
              style: TextStyle(
                  fontFamily: FontsFamily.openSansSemiBold,
                  color: Colors.brown.shade900),
            ),
            avatar: const Icon(Icons.description_outlined),
          ),
          const Divider(
            height: 1,
            thickness: 0.1,
            indent: 24,
            endIndent: 24,
            color: Colors.black,
          ),
          GFListTile(
            title: Text(
              "Salir",
              style: TextStyle(
                  fontFamily: FontsFamily.openSansSemiBold,
                  color: Colors.brown.shade900),
            ),
            avatar: const Icon(Icons.logout_outlined),
          ),
          const Divider(
            height: 1,
            thickness: 0.1,
            indent: 24,
            endIndent: 24,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
