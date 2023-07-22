import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeDevice = MediaQuery.of(context).size;

    return Container(
      width: sizeDevice.width * 0.5,
      height: sizeDevice.height * 0.5,
      child: Placeholder(),
    );
  }
}
