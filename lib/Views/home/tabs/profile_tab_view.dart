import 'package:flutter/material.dart';
import 'package:koko/custom_widgets/custom_card_item.dart';
import 'package:koko/utils/image_utils.dart';

class ProfileTabView extends StatefulWidget {
  const ProfileTabView({Key? key}) : super(key: key);

  @override
  State<ProfileTabView> createState() => _ProfileTabViewState();
}

class _ProfileTabViewState extends State<ProfileTabView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 16, 16, 16),
        child: GridView.count(
          mainAxisSpacing: 8,
          crossAxisCount: 2,
          childAspectRatio: (1 / 1.89),
          shrinkWrap: true,
          children: List.generate(100, (index) {
            return CustomCardItem(url: ImageUtils().getImage());
          }),
        ),
      ),
    );
  }
}
