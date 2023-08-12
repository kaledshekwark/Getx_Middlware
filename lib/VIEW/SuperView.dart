

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:middlewaregetx/main.dart';

class SuperView extends StatelessWidget {
  const SuperView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Super view"),),
      body: Column(
        children: [
          MaterialButton(onPressed: () {
            sharedPreferences!.clear();
            Get.toNamed("/");
          },
            child: Text("SuperView "),
            color: Colors.cyan,
          )
        ],
      ),
    );
  }
}
