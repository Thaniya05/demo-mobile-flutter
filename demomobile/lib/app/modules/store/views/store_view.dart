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
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          children: [
            CarouselWidget(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
            ),
            Center(
              child: NamecardView(),
            ),
            Center(
              child: Container(
                //padding: EdgeInsets.all(10.0),
                width: double.maxFinite,
                height: 200,
                //color: Colors.blueGrey,
                child: ListView.builder(
                  //shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20.0),
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
                          ),
                          Text(index.toString()),
                          Padding(padding: const EdgeInsets.all(10.0)),
                          Container(
                            width: 60,
                            height: 60,
                            color: Colors.blue[((index % 4) + 1) * 100],
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
