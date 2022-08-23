import 'package:flutter/cupertino.dart';

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
    return Column(children: [
      Container(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: const Text("ProfileTabView")),
      Container()
    ]);
  }
}