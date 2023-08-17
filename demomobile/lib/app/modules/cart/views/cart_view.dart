import 'dart:math';

import 'package:demomobile/app/modules/store/controllers/store_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<StoreController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var data = controller.cartlist;
    var rng = Random();
    return Scaffold(
      appBar: AppBar(
        title: const Text('CartView'),
        centerTitle: true,
        backgroundColor: Colors.pink[300],
      ),
      body: Center(
          child: Obx(
        () => ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue[(index % 5) * 100],
              ),
              title: Text('Item ${data[index].name}'),
              subtitle: Text('Price : ${data[index].price}'),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  controller.deleteCart(index);
                },
              ),
            );
          },
        ),
      )),
      bottomNavigationBar: SafeArea(
          child: Container(
        color: Colors.grey,
        //alignment: Alignment.center,
        height: 70,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Text(
                        "Total Price : ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Obx(() => Text(
                            '${controller.totalprice}',
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 24,
                                fontWeight: FontWeight.w400),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 100,
                height: double.maxFinite,
                color: const Color.fromARGB(255, 22, 45, 65),
                child: Center(
                    child: Text(
                  "Buy",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
                )),
              ),
            )
          ],
        ),
      )),
    );
  }
}
