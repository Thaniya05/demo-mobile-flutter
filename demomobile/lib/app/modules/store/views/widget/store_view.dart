import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controllers/store_controller.dart';

import '../namecard_view.dart';

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
              Center(
                child: NamecardView(),
              )
            ],
          )),
    );
  }
}
