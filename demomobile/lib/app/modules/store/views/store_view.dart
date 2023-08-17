import 'package:carousel_slider/carousel_slider.dart';
import 'package:demomobile/app/modules/store/views/widget/category_bar_view.dart';
import 'package:demomobile/app/modules/store/views/widget/hot_deal_view.dart';
import 'package:demomobile/app/modules/store/views/widget/news_view.dart';
import 'package:demomobile/app/modules/store/views/widget/recommend_view.dart';

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
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: SingleChildScrollView(
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
                child: HotDealWidget(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
              ),
              Center(
                child: NewsWidget(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
              ),
              Center(
                child: RecommendWidget(),
              ),
              Center(
                child: Card(
                  elevation: 5,
                  child: Container(
                    width: Get.width * 0.9,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.blueAccent,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Report issue",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Product issue,Product damaged during delivery,etc",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  elevation: 5,
                  child: Container(
                    width: Get.width * 0.9,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.indigo, Colors.black],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Contact us",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  elevation: 5,
                  child: Container(
                    width: Get.width * 0.9,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/1.jpg"),
                        fit: BoxFit.cover,
                        opacity: 0.6,
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(1),
                            Colors.blue.withOpacity(0.2),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Claim Product",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
