import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/feedback_controller.dart';

class FeedbackView extends GetView<FeedbackController> {
  const FeedbackView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        title: const Text('意见反馈'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: ListTile(
                title: const Text(
                  '反馈类型：',
                ),
                trailing: SizedBox(
                  width: 180,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text('物流速度'),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.grey[100],
                          filled: true),
                      maxLines: 4,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 16),
                    child: GridView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                mainAxisSpacing: 4,
                                childAspectRatio: 1,
                                crossAxisSpacing: 4),
                        itemCount: controller.imageUpload.value.length,
                        itemBuilder: (BuildContext context, int index) {
                          String item = controller.imageUpload.value[index];
                          return Container(
                            width: 80,
                            height: 80,
                            child: Image.asset(item),
                          );
                        }),
                  ),
                ],
              ),
            ),
            Container(
              width: Get.width,
              margin: const EdgeInsets.all(16),
              child: OutlinedButton(
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.blue),
                    side: MaterialStateProperty.all(
                        const BorderSide(color: Colors.blue)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(color: Colors.white)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                onPressed: () {},
                child: SizedBox(
                  height: 40.0,
                  child:  Center(
                    child: const Text('提交反馈',style: TextStyle(color: Colors.white),),
                  )
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
