import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hub_controller.dart';

class HubView extends GetView<HubController> {
  const HubView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HubView'),
        //centerTitle: true,
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Obx(
            () => SingleChildScrollView(
              child: Center(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        _buildCard(
                          topic: "Topic1",
                          details: "Lorel prm bisua lifd",
                          color: const Color.fromARGB(255, 30, 106, 168),
                        ),
                        const Padding(padding: EdgeInsets.only(bottom: 10.0)),
                        _buildCard(
                          topic: "Topic1",
                          details: "Lorel prm bisua lifd",
                          color: const Color.fromARGB(255, 101, 30, 168),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }

  GestureDetector _buildCard(
      {required String topic, required String details, required Color color}) {
    return GestureDetector(
      onTap: () {
        controller.isClick();
      },
      child: Column(
        children: [
          Material(
            elevation: 10,
            child: Container(
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    color,
                    Color.fromARGB(255, 1, 2, 3),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      topic,
                      style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        Text(
                          details,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          AnimatedContainer(
            width: controller.mybool.isTrue ? 400 : 0,
            height: controller.mybool.isTrue ? 150 : 0,
            duration: const Duration(milliseconds: 700),
            color: Colors.grey[400],
            curve: Curves.fastOutSlowIn,
          ),
        ],
      ),
    );
  }
}
