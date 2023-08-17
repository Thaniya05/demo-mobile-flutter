// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class TestModel {
  String name;
  num id;
  String type;
  int price;
  TestModel({
    required this.name,
    required this.id,
    required this.type,
    required this.price,
  });
}

class StoreController extends GetxController {
  //TODO: Implement StoreController

  final testimg =
      "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif";
  final ex_str =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus suscipit molestie sapien vitae iaculis. Proin dictum lorem id lorem aliquet placerat. In hac habitasse platea dictumst. Curabitur sit amet metus vel dui pretium vehicula semper sed neque. Donec felis mi, tempor id nulla id, vestibulum pretium tortor. Maecenas orci mauris, dapibus eu urna sit amet, cursus hendrerit sapien. Proin lobortis a tellus eget congue. Donec tempus felis nec libero";
  RxInt count = 0.obs;
  RxInt count_news = 0.obs;

  RxList<TestModel> cartlist = <TestModel>[].obs;
  RxInt totalprice = 0.obs;
  List<dynamic> category = [
    {"name": "Ticket", "icon": Icons.airplane_ticket},
    {"name": "Food", "icon": Icons.soup_kitchen},
    {"name": "Phone", "icon": Icons.phone_iphone},
    {"name": "Electronic", "icon": Icons.microwave},
    {"name": "restaurant", "icon": Icons.restaurant},
    {"name": "Movie", "icon": Icons.video_camera_back},
    {"name": "FastFood", "icon": Icons.fastfood},
    {"name": "Payment", "icon": Icons.payments},
  ];
  List<TestModel> hotdeallist = [];

  var rng = Random();

  List<String> typecategory = [
    "Ticket",
    "Food",
    "Phone",
    "Electronic",
    "Restaurant",
    "Movie",
    "FastFood",
    "Payment"
  ];

  @override
  void onInit() {
    super.onInit();
    hotdeallist = List.generate(
      30,
      (index) => TestModel(
        name: "${index}",
        id: index,
        type: typecategory[rng.nextInt(typecategory.length)],
        price: rng.nextInt(1000),
      ),
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void updateIndicator(int i) => count.value = i;

  void updateNews(int i) => count_news.value = i;

  void toHotDeal() =>
      Get.toNamed('/show-category', parameters: {"page": "HotDeal"});

  void toCategory(String str) =>
      Get.toNamed('/show-category', parameters: {"page": str});

  void toCart() => Get.toNamed('/cart');

  void addcart(TestModel data) {
    cartlist.add(data);
    totalprice.value = allprice();
  }

  void deleteCart(int index) {
    cartlist.removeAt(index);
    var i = allprice();
    print(i);
    totalprice.value = i;
  }

  int allprice() {
    int total = 0;
    for (var i = 0; i < cartlist.length; i++) {
      total += cartlist[i].price;
    }
    return total;
  }
}
