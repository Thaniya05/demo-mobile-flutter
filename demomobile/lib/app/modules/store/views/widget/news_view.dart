import 'package:carousel_slider/carousel_slider.dart';
import 'package:demomobile/app/modules/store/controllers/store_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NewsWidget extends GetView<StoreController> {
  const NewsWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0),
            ),
            Text(
              "News",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Visibility(
              visible: false,
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("View more"),
                    Icon(Icons.keyboard_arrow_right_outlined),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CarouselSlider(
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          width: Get.width,
                          decoration: BoxDecoration(
                            //color: Colors.amber,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(controller.testimg),
                              opacity: 0.8,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.grey[200],
                          width: Get.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 5, 0, 5),
                                child: Text(
                                  "New ${i}",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                child: Text(
                                  controller.ex_str,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
                height: 300.0,
                viewportFraction: 1,
                autoPlay: true,
                onPageChanged: ((index, reason) {
                  controller.updateNews(index);
                })),
          ),
        )
      ],
    );
  }
}
