import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //excludeHeaderSemantics: true,
        toolbarHeight: 200,
        flexibleSpace: Container(
          //color: Colors.amber,
          child: CarouselSlider(
            items: [1, 2, 3, 4]
                .map(
                  (e) => Container(
                    width: MediaQuery.of(context).size.width,
                    child: Center(child: Text("${e}")),
                    color: Colors.blueGrey[e * 100],
                  ),
                )
                .toList(),
            options: CarouselOptions(
              aspectRatio: 16 / 9,
              height: 200,
              //enlargeCenterPage: true,
              viewportFraction: 1,
              autoPlay: true,
            ),
          ),
        ),
        //title: Text("Hello"),
      ),
      body: Container(
          // color: //Colors.amber,
          ),
    );
  }
}
