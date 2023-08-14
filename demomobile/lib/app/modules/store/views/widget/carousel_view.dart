import 'package:carousel_slider/carousel_slider.dart';
import 'package:demomobile/app/modules/store/controllers/store_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

final testimg = "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif";

class CarouselWidget extends GetView<StoreController> {
  CarouselWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 100.0,
              viewportFraction: 1,
              autoPlay: true,
              onPageChanged: ((index, reason) {
                controller.updateIndicator(index);
              })),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                    //color: Colors.amber,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(testimg),
                      opacity: 0.8,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [1, 2, 3, 4, 5].asMap().entries.map((entry) {
            return Obx(
              () => Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(
                            controller.count == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
