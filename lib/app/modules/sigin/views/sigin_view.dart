import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controllers/sigin_controller.dart';

class SiginView extends GetView<SiginController> {
  const SiginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
        title: const Text('签到'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.all(16.0),
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0)),
              child: Column(
                children: [
                  TableCalendar(
                    headerVisible: false,
                    rangeStartDay:DateTime.utc(2022,10,1),
                    rangeEndDay:DateTime.utc(2022,10,11),
                    locale: 'zh_CN',
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2099, 3, 14),
                    focusedDay: DateTime.now(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 348.w,
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                const BorderSide(color: Colors.blue)),
                            textStyle: MaterialStateProperty.all(
                                const TextStyle(color: Colors.blue)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ))),
                        onPressed: () {},
                        child: const Text(
                          '今日已签到',
                        )),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
