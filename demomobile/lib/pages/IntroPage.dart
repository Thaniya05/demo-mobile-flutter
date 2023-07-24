import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get_storage/get_storage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
            child: Text(
              "ยินดีต้อนรับ",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
            child: Text("Lorem ipsum dollar sit amet",
                style: Theme.of(context).textTheme.titleSmall),
          ),
          Container(
            child: CarouselSlider(
              items: [1, 2, 3, 4, 5]
                  .map((e) => Container(
                        child: Center(child: Text("${e}")),
                        color: Colors.grey[100 * e],
                      ))
                  .toList(),
              options: CarouselOptions(
                viewportFraction: 0.8,
                autoPlay: true,
                aspectRatio: 16 / 9,
                height: MediaQuery.of(context).size.height * 0.55,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                enlargeFactor: 0.4,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Center(
              child: FilledButton(
                onPressed: () {},
                child: Text("Login"),
              ),
            ),
          ),
          Center(
            child: FilledButton(
              onPressed: () {},
              child: Text("Register"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "เข้าใช้งานในรูปแบบ",
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 12),
                ),
                Padding(padding: EdgeInsets.only(left: 2.0)),
                Text(
                  "Guest Mode",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                      color: Theme.of(context).primaryColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
