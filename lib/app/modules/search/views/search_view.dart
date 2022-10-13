import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import 'package:mmgoods/app/widget/page_status/lottie_animation.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
                child: Material(
              color: Colors.transparent,
              child: CupertinoTextField(
                prefix:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey[400],
                    size: 18,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 1), // 输入框边框
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                ),
              ),
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: GestureDetector(
                child: const Text('搜索',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                onTap: (){},
              ),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: Center(
        child: LottieAnimation(type: 'no_search_result',),
      ),
    );
  }
}
