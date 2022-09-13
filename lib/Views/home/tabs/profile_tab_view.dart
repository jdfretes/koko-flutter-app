import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:koko/custom_widgets/custom_card_item.dart';
import 'package:koko/utils/image_utils.dart';

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
              color: Colors.blueAccent,
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
          const GFListTile(
              titleText: 'Title',
              subTitleText:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing',
              icon: Icon(Icons.edit)),
          const GFListTile(
              titleText: 'Title',
              subTitleText:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing',
              icon: Icon(Icons.edit)),
          const GFListTile(
              titleText: 'Title',
              subTitleText:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing',
              icon: Icon(Icons.edit)),
        ],
      ),
    );
  }
}
