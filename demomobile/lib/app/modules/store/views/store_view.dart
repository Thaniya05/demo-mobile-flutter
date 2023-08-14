import 'package:demomobile/app/modules/store/views/widget/category_bar_view.dart';

import 'widget/carousel_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/store_controller.dart';

import 'widget/namecard_view.dart';

class StoreView extends GetView<StoreController> {
  const StoreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StoreView'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Column(
          children: [
            CarouselWidget(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
            ),
            Center(
              child: NamecardView(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
            ),
            Center(
              child: CategoryBarWidget(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
            ),
            Center(
              child: Column(
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
                          color: Colors.white,
                          margin: EdgeInsets.all(10.0),
                          elevation: 2,
                          child: Container(
                            width: 200 * 3 / 4,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Colors.grey,
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.amber,
                                  ),
                                  flex: 1,
                                )
                              ],
                            ),
                            //color: Colors.red,
                          ),
                        );
                      },
                      itemCount: 20,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
