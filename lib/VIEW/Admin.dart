

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:middlewaregetx/main.dart';

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Admin"),),
      body: Column(
        children: [
          MaterialButton(

            onPressed: () {
            sharedPreferences!.clear();
            Get.toNamed("/");
          },
            child: Text("Singout "),
            color: Colors.cyan,
          )
        ],
      ),
    );
  }
}
