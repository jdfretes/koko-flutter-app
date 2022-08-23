import 'package:flutter/cupertino.dart';

class FavoriteTabView extends StatefulWidget {
  const FavoriteTabView({Key? key}) : super(key: key);

  @override
  State<FavoriteTabView> createState() => _FavoriteTabViewState();
}

class _FavoriteTabViewState extends State<FavoriteTabView> {

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
    return Column(children: [
      Container(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: const Text("FavoriteTabView")),
      Container()
    ]);
  }
}
