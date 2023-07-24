import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final s = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        //excludeHeaderSemantics: true,
      ),
      body: SingleChildScrollView(
        reverse: true,
        controller: s,
        child: Column(
          children: [
            _slider(context),
            const Padding(
              padding: EdgeInsets.all(40.0),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: _myTextField(),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: _myTextField(),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                ),
                FilledButton(
                  onPressed: () {},
                  child: Text("LOGIN"),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                ),
                const Text(
                  "forgot password ?",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have any account?",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  TextField _myTextField() {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            style: BorderStyle.solid,
            //color: Colors.white,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(7.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            style: BorderStyle.solid,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(7.0),
        ),
        //alignLabelWithHint: true,
        prefixIcon: const Icon(Icons.person_2_sharp),
        suffixIcon: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {},
        ),
        labelText: 'Username',
        filled: true,
      ),
    );
  }

  CarouselSlider _slider(BuildContext context) {
    return CarouselSlider(
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
    );
  }
}
