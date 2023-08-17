import 'package:demomobile/app/modules/store/controllers/store_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HotDealWidget extends GetView<StoreController> {
  const HotDealWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var data = controller.hotdeallist;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0),
            ),
            Text(
              "Hot deal",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => controller.toHotDeal(),
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
          padding: EdgeInsets.only(bottom: 10.0),
        ),
        Container(
          height: 220,
          width: double.maxFinite,
          //color: Colors.amber,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, index) {
              return Card(
                borderOnForeground: false,
                color: Colors.white,
                margin: const EdgeInsets.all(10.0),
                elevation: 2,
                child: GestureDetector(
                  onTap: () {
                    controller.addcart(
                      TestModel(
                          name: data[index].name,
                          id: data[index].id,
                          type: data[index].type,
                          price: data[index].price),
                    );
                  },
                  child: Container(
                    width: 200 * 3 / 4,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(5.0),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/${(index % 5) + 1}.jpg"),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.amber,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(controller.hotdeallist[index].name),
                                Text(controller.hotdeallist[index].type),
                                Text(controller.hotdeallist[index].price
                                    .toString()),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    //color: Colors.red,
                  ),
                ),
              );
            },
            itemCount: controller.hotdeallist.length < 6
                ? controller.hotdeallist.length
                : 6,
          ),
        )
      ],
    );
  }
}
