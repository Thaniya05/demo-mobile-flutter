import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NamecardView extends GetView {
  const NamecardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: Get.width * 0.9,
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 0, 10),
              width: double.maxFinite,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
          ),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome,",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.0),
                    ),
                    Text(
                      "User001",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text("Money Wallet"),
                Text("1234 THB"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
