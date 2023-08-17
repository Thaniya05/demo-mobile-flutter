import 'package:demomobile/app/modules/store/controllers/store_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/show_category_controller.dart';

class ShowCategoryView extends GetView<StoreController> {
  const ShowCategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var data = controller.hotdeallist;
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.parameters["page"].toString()),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColorLight,
        actions: [
          GestureDetector(
            onTap: () => controller.toCart(),
            child: Obx(() => Container(
                  child: Badge.count(
                    count: controller.cartlist.length,
                    child: Icon(Icons.shopping_basket),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.0),
          ),
        ],
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: 3 / 4,
          children: List.generate(data.length, (index) {
            return GestureDetector(
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
                margin: index == data.length - 1 || index == data.length - 2
                    ? const EdgeInsets.only(bottom: 20.0)
                    : null,
                //color: Colors.grey[200],
                child: Column(
                  children: [
                    Expanded(
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
                      flex: 2,
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
                            Text(data[index].name),
                            Text(data[index].type),
                            Text(data[index].price.toString()),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      )),
    );
  }
}
