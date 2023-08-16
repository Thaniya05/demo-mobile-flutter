import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HotDealWidget extends GetView {
  const HotDealWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
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
                borderOnForeground: false,
                color: Colors.white,
                margin: const EdgeInsets.all(10.0),
                elevation: 2,
                child: Container(
                  width: 200 * 3 / 4,
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
                  //color: Colors.red,
                ),
              );
            },
            itemCount: 20,
          ),
        )
      ],
    );
  }
}
