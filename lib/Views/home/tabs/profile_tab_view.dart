import 'package:flutter/material.dart';
import 'package:koko/custom_widgets/custom_card_item.dart';
import 'package:koko/utils/image_utils.dart';

class ProfileTabView extends StatefulWidget {
  const ProfileTabView({
    Key? key,
    required this.onShowHomeTab
  }) : super(key: key);
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
          style: TextStyle(
              color: Colors.brown
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 16, 16),
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
