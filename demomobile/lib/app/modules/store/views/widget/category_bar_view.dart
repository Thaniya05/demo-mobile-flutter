import 'package:demomobile/app/modules/store/controllers/store_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CategoryBarWidget extends GetView<StoreController> {
  const CategoryBarWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          height: 80,
          //color: Colors.amber,
          //color: Colors.blueGrey,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(7.5, 0, 7.5, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.red[((index % 4) + 1) * 100],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: IconButton(
                        onPressed: () {
                          controller
                              .toCategory(controller.category[index]["name"]);
                        },
                        icon: Icon(
                          controller.category[index]["icon"],
                        ),
                        iconSize: 40,
                      ),
                    ),
                    Text(controller.category[index]["name"]),
                  ],
                ),
              );
            },
            itemCount: controller.category.length,
          ),
        ),
        /*Padding(padding: EdgeInsets.only(bottom: 7.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (index) {
              return Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.red,
                ),
              );
            },
          ),
        )*/
        //check scrollview
      ],
    );
  }
}
