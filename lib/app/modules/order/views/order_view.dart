import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_controller.dart';

class OrderView extends GetView<OrderController> {
  const OrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: controller.tab.value.length,
        child: Scaffold(
            appBar: AppBar(
              title: const Text('我的订单'),
              centerTitle: true,
              bottom: TabBar(
                  onTap: controller.tabOnTap,
                  tabs: controller.tab.value.map((element) {
                    return Tab(text: element['title']);
                  }).toList()),
            ),
            body: TabBarView(
              children: controller.tab.value
                  .map((ele) => ListView.builder(
                      shrinkWrap: true,
                      itemCount: 30,
                      itemBuilder: (context, int index) {
                        return Container(
                          margin: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.0)),
                          child: Column(
                            children: [
                              ListTile(
                                title: Row(
                                  children: const [
                                    Text(
                                      '下单时间：',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '2022-01-22 18:56:30',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                trailing: Text('待付款',
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.red)),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 16.0, right: 16.0, bottom: 16.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                            'lib/assets/images/goods_thumb_01.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Expanded(
                                        child: SizedBox(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '薇妮(Viney)时尚包包女包牛皮单肩包女休闲百搭斜挎包韩版小方包潮(枪色)',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Container(
                                            color: Colors.grey[100],
                                            padding: EdgeInsets.all(4.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  '白色，鳄鱼皮，典藏版 ',
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style:
                                                      TextStyle(fontSize: 12.0),
                                                ),
                                                Text(
                                                  'x 1',
                                                  style:
                                                      TextStyle(fontSize: 12.0),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                '￥',
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 10),
                                              ),
                                              Text(
                                                '299',
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                '.00',
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 10),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ))
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  OutlinedButton(
                                      style: ButtonStyle(
                                          textStyle: MaterialStateProperty.all(
                                              TextStyle(
                                                  color: Colors.grey[100])),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                          ))),
                                      onPressed: () {},
                                      child: Text('取消订单',style: TextStyle(color: Colors.grey,fontSize: 12),)),
                                  SizedBox(width: 10.0),
                                  OutlinedButton(
                                      style: ButtonStyle(
                                        side: MaterialStateProperty.all(BorderSide(color: Colors.red)),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ))),
                                      onPressed: () {},
                                      child: Text('评价',style: TextStyle(color: Colors.red,fontSize: 12),))
                                ],
                              )
                            ],
                          ),
                        );
                      }))
                  .toList(),
            )));
  }
}
