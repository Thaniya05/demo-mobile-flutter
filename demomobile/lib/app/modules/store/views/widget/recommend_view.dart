import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RecommendWidget extends GetView {
  const RecommendWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0),
            ),
            Text(
              "Recommend for you",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Visibility(
              visible: false,
              child: Expanded(
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
          width: Get.width * 0.95,
          height: (((Get.width * 0.4) * 4 / 3) + 50) * 3,
          child: GridView.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
            children: List.generate(6, (index) {
              return Container(
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
                      child: Container(
                        color: Colors.amber,
                      ),
                      flex: 1,
                    )
                  ],
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
