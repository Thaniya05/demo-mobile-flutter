import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: const [
              0.1,
              0.8,
              0.95,
            ],
            colors: [
              theme.primaryColorLight,
              Color.fromARGB(255, 255, 255, 255),
              theme.primaryColor
            ],
          ),
        ),
        child: Center(
          child: Container(
            width: Get.width * 0.9,
            height: Get.height * 0.7,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Username or Email-Address "),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          prefixIcon: const Icon(Icons.person_2),
                        ),
                      ),
                      _spcing(),
                      const Text("Password "),
                      _spcing(),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          prefixIcon: const Icon(Icons.key_outlined),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FilledButton.tonal(
                          onPressed: () {
                            Get.toNamed('/hub', preventDuplicates: false);
                          },
                          child: Container(
                            child: Center(child: Text("LOGIN")),
                            width: Get.width * 0.6,
                          ),
                        ),
                        _spcing(d: 15.0),
                        const Text("Forgotten password ?"),
                        _spcing(d: 30.0),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Don't have account ? "),
                              Text(
                                "Create new account",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding _spcing({double d = 10.0}) {
    return Padding(
      padding: EdgeInsets.only(bottom: d),
    );
  }
}
