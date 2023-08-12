

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:middlewaregetx/main.dart';

class Singup extends StatelessWidget {
  const Singup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("singup"),),
      body: Column(
        children: [
          MaterialButton(onPressed: () {
            sharedPreferences!.clear();
            Get.toNamed("/");
          },
            child: Text("singout "),
            color: Colors.cyan,
          )
        ],
      ),
    );
  }
}
