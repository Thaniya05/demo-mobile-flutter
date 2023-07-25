import 'package:carousel_slider/carousel_slider.dart';
import 'package:demomobile/controllers/app_controller.dart';
import 'package:demomobile/services/dummy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double sliderFactor = 0.8;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: size.width * sliderFactor,
                child: CarouselSlider(
                  items: listimg
                      .map(
                        (e) => Card(
                          child: Container(
                            decoration: BoxDecoration(),
                            width: size.width * sliderFactor,
                            height: (size.width * sliderFactor) * (9 / 16),
                            //color: Colors.amber,
                            child: Center(
                              child: Image.asset(
                                e,
                                fit: BoxFit.fill,
                                width: size.width * sliderFactor,
                                height: (size.width * sliderFactor) * (9 / 16),
                              ),
                            ),
                            //color: Colors.blueGrey[e * 100],
                          ),
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    height: (size.width * 0.9) * 9 / 16,
                    viewportFraction: 1,
                    autoPlay: true,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
