
import 'package:flutter/material.dart';
import 'package:swipe_deck/swipe_deck.dart';

const IMAGES = [
  "apex",
  "cod",
  "destiny",
  "fc3",
  "game_4",
  "ghost",
  "mk11",
  "nfs",
  "pubg",
  "mk112"
];
final borderRadius = BorderRadius.circular(20.0);
class BakWidget extends StatelessWidget {
  const BakWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 520,
            child: Container(
                margin: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: const Text("推荐"),
                      trailing: SizedBox(
                        width: 200,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text('查看更多'),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_circle_right))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    SwipeDeck(
                      startIndex: 3,
                      emptyIndicator: const Center(
                        child: Text("Nothing Here"),
                      ),
                      cardSpreadInDegrees:
                      5, // Change the Spread of Background Cards
                      onSwipeLeft: () {
                        print("USER SWIPED LEFT -> GOING TO NEXT WIDGET");
                      },
                      onSwipeRight: () {
                        print(
                            "USER SWIPED RIGHT -> GOING TO PREVIOUS WIDGET");
                      },
                      onChange: (index) {
                        print(IMAGES[index]);
                      },
                      widgets: IMAGES
                          .map((e) => GestureDetector(
                        onTap: () {
                          print(e);
                        },
                        child: ClipRRect(
                            borderRadius: borderRadius,
                            child: Container(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 208,
                                    height: 208,
                                    child: Image.asset(
                                      "lib/assets/images/$e.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    padding:
                                    const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              e,
                                              style: const TextStyle(
                                                  fontSize: 16),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text(
                                              '¥100.00',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors
                                                      .redAccent),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ))
                          .toList(),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.star),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.shopping_bag),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 100,
              itemBuilder: (context, int index) {
                return Container(
                  margin: const EdgeInsets.all(12.0),
                  padding: const EdgeInsets.all(12.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset('lib/assets/images/9e5ce8e9e2e6f663.jpg'),
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        crossAxisAlignment:
                        CrossAxisAlignment.end,
                        children: [
                          Text(
                            '$index',
                            style: const TextStyle(
                                fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            '¥100.00',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors
                                    .redAccent),
                          )
                        ],
                      )
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
