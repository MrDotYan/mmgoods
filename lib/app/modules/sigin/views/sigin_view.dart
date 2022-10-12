import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controllers/sigin_controller.dart';
import '../model/model.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width,
              margin: const EdgeInsets.all(16.0),
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    '积分：12000',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '连续签到${controller.siginDates.length}天',
                    style:
                        const TextStyle(fontSize: 12, color: Color(0xff666666)),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 24.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0)),
                child: Column(
                  children: [
                    TableCalendar(
                      eventLoader: (day) {
                        final String date = controller.dateFormat(day);
                        if (controller.siginDates.value.contains(date)) {
                          return [const Event('Cyclic event')];
                        }
                        return [];
                      },
                      headerVisible: false,
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
            Container(
              margin: const EdgeInsets.all(16.0),
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0)),
              child: const Center(
                child: Text(
                  '积分兑换',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.goods_data.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      childAspectRatio: 0.70,
                      crossAxisSpacing: 8),
                  itemBuilder: (context, int index) {
                    Map item = controller.goods_data[index];

                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Image.asset(
                                item['img'],
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 38,
                              child: Text(
                                item['name'],
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  '${item['price']}积分',
                                  style: const TextStyle(color: Colors.red),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
