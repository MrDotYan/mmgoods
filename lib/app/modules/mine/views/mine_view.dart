import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mine_controller.dart';

class MineView extends GetView<MineController> {
  const MineView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 230.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Row(children: [Image.asset('lib/assets/images/member.png')],),
            background: Container(
              color: Colors.blue,
            ),
          ),
        )
      ]),
    );
  }
}
