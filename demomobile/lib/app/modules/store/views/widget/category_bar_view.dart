import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CategoryBarWidget extends GetView {
  const CategoryBarWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          height: 80,
          //color: Colors.amber,
          //color: Colors.blueGrey,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(7.5, 0, 7.5, 0),
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
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.airplane_ticket,
                        ),
                        iconSize: 40,
                      ),
                    ),
                    Text(index.toString()),
                  ],
                ),
              );
            },
            itemCount: 30,
          ),
        ),
        /*Padding(padding: EdgeInsets.only(bottom: 7.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (index) {
              return Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.red,
                ),
              );
            },
          ),
        )*/
        //check scrollview
      ],
    );
  }
}
